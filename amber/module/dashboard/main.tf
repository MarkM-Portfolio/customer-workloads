locals {
  volumes = tolist(data.aws_ebs_volumes.volume.ids)
  windows_ids = tolist(data.aws_instances.windows.ids)
}

resource "aws_ssm_parameter" "windows_cw_config" {
  name  = "/cloudwatch-agent/windows/config"
  type  = "String"
  value = file("${path.cwd}/module/dashboard/configs/amazon-cloudwatch-agent-windows.json")
}


resource "aws_cloudwatch_dashboard" "monitoring" {
  dashboard_name = var.dashboard_name

  dashboard_body = jsonencode({
    "widgets" : [
      {
        "type" : "metric",
        "x" : 0,
        "y" : 0,
        "width" : 24,
        "height" : 4,
        "properties" : {
          "metrics" : concat([for windows in local.windows_ids :
            ["Windows-Metrics", "Memory Available Bytes", "InstanceId", "${windows}"]
          ])
          "period" : var.cw_period,
          "view" : var.view,
          "stat" : "Average",
          "region" : var.region,
          "title" : "Memory"
        }
      },
      {
        "type" : "metric",
        "x" : 0,
        "y" : 0,
        "width" : 24,
        "height" : 4,
        "properties" : {
          "metrics" : concat([for windows in local.windows_ids :
            ["AWS/EC2", "CPUUtilization", "InstanceId", "${windows}"]
          ])
          "period" : var.cw_period,
          "view" : var.view,
          "stat" : "Average",
          "region" : var.region,
          "title" : "CPU"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for id in local.volumes :
            ["AWS/EBS", "VolumeReadBytes", "VolumeId", "${id}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region,
          "stat" : "Sum",
          "stacked" : false,
          "title" : "Volume Read Bytes"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for id in local.volumes :
            ["AWS/EBS", "VolumeWriteBytes", "VolumeId", "${id}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region,
          "stat" : "Sum",
          "stacked" : false,
          "title" : "Volume Write Bytes"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for id in local.volumes :
            ["AWS/EBS", "VolumeReadOps", "VolumeId", "${id}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region
          "stat" : "Sum",
          "stacked" : false,
          "title" : "Volume Read Ops"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for id in local.volumes :
            ["AWS/EBS", "VolumeWriteOps", "VolumeId", "${id}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region
          "stat" : "Sum",
          "stacked" : false,
          "title" : "Volume Write Ops"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeReadBytes\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "(e_${index(local.volumes, volume)} / ${var.cw_period}) / 1024", "id" : "f${index(local.volumes, volume)}", "stat" : "Average", "region" : "${var.region}", "label" : "${volume}" }]
          ]),
          "title" : "Read bandwidth (KiB/s)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeWriteBytes\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "(e_${index(local.volumes, volume)} / ${var.cw_period}) / 1024", "id" : "f${index(local.volumes, volume)}", "stat" : "Average", "region" : "${var.region}", "label" : "${volume}" }]
          ]),
          "title" : "Write bandwidth (KiB/s)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeReadOps\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "(e_${index(local.volumes, volume)} / ${var.cw_period})", "id" : "f${index(local.volumes, volume)}", "stat" : "Average", "region" : "${var.region}", "label" : "${volume}" }]
          ]),
          "title" : "Read Throughput (IOPS)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeWriteOps\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "(e_${index(local.volumes, volume)} / ${var.cw_period})", "id" : "f${index(local.volumes, volume)}", "stat" : "Average", "region" : "${var.region}", "label" : "${volume}" }]
          ]),
          "title" : "Write Throughput (IOPS)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeTotalReadTime\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeReadOps\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m_${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "IF(e_${index(local.volumes, volume)} !=0, (e${index(local.volumes, volume)} / e_${index(local.volumes, volume)}) * 1000, 0)", "label" : "${volume}" }]
          ])
          "title" : "Average read latency (ms/op)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "view" : var.view,
          "stat" : "Average",
          "period" : var.cw_period,
          "stacked" : false,
          "yAxis" : {
            "left" : {
              "min" : 0
            }
          },
          "region" : var.region,
          "metrics" : concat([for volume in local.volumes :
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeTotalWriteTime\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "SEARCH('{AWS/EBS,VolumeId} MetricName=\"VolumeWriteOps\" AND \"${volume}\"', 'Average', ${var.cw_period})", "id" : "m_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m${index(local.volumes, volume)})", "id" : "e${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "AVG(m_${index(local.volumes, volume)})", "id" : "e_${index(local.volumes, volume)}", "visible" : false }]
          ], [for volume in local.volumes:
            [{ "expression" : "IF(e_${index(local.volumes, volume)} !=0, (e${index(local.volumes, volume)} / e_${index(local.volumes, volume)}) * 1000, 0)", "label" : "${volume}" }]
          ])
          "title" : "Average Write latency (ms/op)"
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 0,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for windows in local.windows_ids :
            ["AWS/EC2", "NetworkIn", "InstanceId", "${windows}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region,
          "stat" : "Sum",
          "stacked" : false
        }
      },
      {
        "height" : 4,
        "width" : 12,
        "y" : 0,
        "x" : 12,
        "type" : "metric",
        "properties" : {
          "sparkline" : true,
          "view" : var.view,
          "metrics" : concat([for windows in local.windows_ids :
            ["AWS/EC2", "NetworkOut", "InstanceId", "${windows}"]
          ]),
          "period" : var.cw_period,
          "region" : var.region,
          "stat" : "Sum",
          "stacked" : false
        }
      }
    ]
  })
}