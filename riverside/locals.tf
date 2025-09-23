locals {
  region      = data.aws_ssm_parameter.region.value
  environment = data.aws_ssm_parameter.environment.value
  customer    = data.aws_ssm_parameter.customer.value

  subnet = {
    app_a  = data.aws_subnet.app_a.id
    app_b  = data.aws_subnet.app_b.id
    data_a = data.aws_subnet.data_a.id
    data_b = data.aws_subnet.data_b.id
  }

  sg = {
    baseline_app       = data.aws_security_group.baseline_app.id
    baseline_data      = data.aws_security_group.baseline_data.id
    custom_app         = data.aws_security_group.custom_app.id
    migration          = data.aws_security_group.migration.id
    cutover_test       = data.aws_security_group.cutover_test.id
    rds_broker         = data.aws_security_group.rds_broker.id
    shared_service_app = data.aws_security_group.shared_service_app.id
    infor_os           = data.aws_security_group.infor_os.id
  }

  dc = {
    DRIV01DCP01-2016 = {
      ami                    = "ami-0514f3310389f5791"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data]
      monitoring             = false
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    DRIV01DCP02-2016 = {
      ami                    = "ami-0514f3310389f5791"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data]
      monitoring             = false
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
  }

  cc = {
    DRIV01CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      monitoring             = false
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    DRIV01CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      monitoring             = false
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
  }

  app = {

    GEN2RSIOS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.infor_os]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 200
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSADFS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSBRK01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app, local.sg.rds_broker]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 52
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSKON01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSKON02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSTM101 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    /*GEN2RSSQL02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdd = {
          volume_size = 30
          volume_type = "gp3"
        }
        sdj = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdb = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdi = {
          volume_size = 50
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 520
          volume_type = "gp3"
        }
        sde = {
          volume_size = 500
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 1024
          volume_type = "gp3"
        }
        sdg = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdh = {
          volume_size = 30
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }*/
    GEN2RSSQL01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 30
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 225
          volume_type = "gp3"
        }
        sde = {
          volume_size = 580
          volume_type = "gp3"
        }
        sdh = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdi = {
          volume_size = 42
          volume_type = "gp3"
        }
        sdj = {
          volume_size = 40
          volume_type = "gp3"
        }
        sdd = {
          volume_size = 80
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 520
          volume_type = "gp3"
        }
        sdg = {
          volume_size = 1350
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSSUN01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSIOST01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.infor_os]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSKONT01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 750
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSRDST02 = {
      ami                    = "ami-0baf039a074fc8377"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSSQLT01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdd = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdb = {
          volume_size = 80
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 50
          volume_type = "gp3"
        }
        sde = {
          volume_size = 400
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 30
          volume_type = "gp3"
        }
        sdg = {
          volume_size = 1200
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSTM1T01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSSUN02 = {
      ami                    = "ami-0514f3310389f5791"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }    
  }

# osgapp module is for Open Housing Group servers for Sun 6.4 build - 08/12/2023

  osgapp = {

    GEN2RSRDS01 = {
      ami                    = "ami-0af85f16ce7638150"
      instance_type          = "m5.2xlarge"
      key_name               = "riverside"      
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.infor_os]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSRDS02 = {
      ami                    = "ami-0af85f16ce7638150"
      instance_type          = "m5.2xlarge"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RSRDS03 = {
      ami                    = "ami-0af85f16ce7638150"
      instance_type          = "m5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DRIV01INTP01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.large"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DRIV01INTP02 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.large"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DRIV01SECP01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }

  rds = {
    GEN2RSRDS04 = {
      ami                    = "ami-0915c41575e76eafc"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSRDS05 = {
      ami                    = "ami-0915c41575e76eafc"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
    GEN2RSRDS06 = {
      ami                    = "ami-0915c41575e76eafc"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      monitoring             = true
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 150
          delete_on_termination = false
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows-two"
      }
    }
  }

  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DRIV01"
  }
}
