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
    DSUZ01DCP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring 
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration, local.sg.custom_app]
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

  cc = {
    DSUZ01CCP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.large"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags                  = local.tags
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSUZ01CCP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.large"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
          delete_on_termination = false
          tags                  = local.tags
        }
      ]

      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }

 app = {
  GEN2SZKAPP01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.migration, local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 230
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
  GEN2SZKAPP02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKHM01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
        delete_on_termination = false
        tags = merge({
          "scheduler:ebs-snapshot" = "Yes"
          },
          local.tags
        )
      }
    ]
    ebs_volume = {
      sdc = {
        volume_size = 300
        volume_type = "gp3"
      }
      sdd = {
        volume_size = 100
        volume_type = "gp3"
      }
      sdb = {
        volume_size = 300
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKAPP03 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKAPP04 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 200
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
        volume_size = 50
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKAPP05 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
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
  GEN2SZKHM02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKRDS01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKSMTP01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 52
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
        volume_size = 20
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKSQL01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.data_a
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
        delete_on_termination = false
        tags = merge({
          "scheduler:ebs-snapshot" = "Yes"
          },
          local.tags
        )
      }
    ]
    ebs_volume = {
      sdf = {
        volume_size = 20
        volume_type = "gp3"
      }
      sdb = {
        volume_size = 500
        volume_type = "gp3"
      }
      sde = {
        volume_size = 150
        volume_type = "gp3"
      }
      sdc = {
        volume_size = 20
        volume_type = "gp3"
      }
      sdh = {
        volume_size = 20
        volume_type = "gp3"
      }
      sdi = {
        volume_size = 30
        volume_type = "gp3"
      }
      sdg = {
        volume_size = 500
        volume_type = "gp3"
      }
      sdd = {
        volume_size = 30
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKUAPP01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 135
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
  GEN2SZKUAPP02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKUAPP03 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKUAPP04 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
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
        volume_size = 10
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKUHM01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
        volume_size = 100
        volume_type = "gp3"
      }
      sdc = {
        volume_size = 380
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKUSQL01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.data_b
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
        delete_on_termination = false
        tags = merge({
          "scheduler:ebs-snapshot" = "Yes"
          },
          local.tags
        )
      }
    ]
    ebs_volume = {
      sde = {
        volume_size = 30
        volume_type = "gp3"
      }
      sdd = {
        volume_size = 20
        volume_type = "gp3"
      }
      sdf = {
        volume_size = 300
        volume_type = "gp3"
      }
      sdg = {
        volume_size = 30
        volume_type = "gp3"
      }
      sdc = {
        volume_size = 500
        volume_type = "gp3"
      }
      sdb = {
        volume_size = 50
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2SZKURDS01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2SZKHANADB01 = {
    ami = "ami-0d519aae4e12ad2bf"
    instance_type = "r5.8xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.data_a
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 100
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
        volume_size = 1200
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Linux"
    }
  }
  GEN2SZKUHANADB01 = {
    ami = "ami-01a21cb834fed6644"
    instance_type = "r5.8xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.data_b
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 100
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
        volume_size = 1200
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Linux"
    }
  }
}
rpx = {
  DSUZ01RPX01 = {
    ami = "ami-0fe0ceac7a4b3c970"
    instance_type = "t3.medium"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    key_name  = "suzuki"
    vpc_security_group_ids = [local.sg.migration,local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 100
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
      "Patch Group"            = "Linux"
    }
  }
}
tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DSUZ01"
  }
  
 
}

