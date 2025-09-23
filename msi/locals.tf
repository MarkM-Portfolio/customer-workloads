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

# The domain controller MSUKSUNDC01 is for Sapphire Beyond migration project

  dc = {
    
# The domain controller MSISUNDC02 is for Sun 6.4 upgrade project

    MSISUNDC02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
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

# The Servers in this block of code is only for Sun 6.4 upgrade project
# Sun 6.4 upgrade project PROD Environment code START

  app = {
    DMAR02SQLP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.4xlarge"
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdb = {
          volume_type = "gp3"
          volume_size = 1200
          throughput  = 125
          iops        = 3000
        }
        sdc = {
          volume_type = "gp3"
          volume_size = 900
          throughput  = 125
          iops        = 3000
        }
        sdd = {
          volume_type = "gp3"
          volume_size = 30
          throughput  = 125
          iops        = 3000
        }
        sde = {
          volume_type = "gp3"
          volume_size = 400
          throughput  = 125
          iops        = 3000
        }
        sdf = {
          volume_type = "gp3"
          volume_size = 200
          throughput  = 125
          iops        = 3000
        }
        sdg = {
          volume_type = "gp3"
          volume_size = 30
          throughput  = 125
          iops        = 3000
        }
        sdh = {
          volume_type = "gp3"
          volume_size = 1750
          throughput  = 125
          iops        = 3000
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }
    DMAR02RDSP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 180
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
    DMAR02RDSP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 180
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
    DMAR02RDSP03 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 180
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
    DMAR02RDSP04 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 170
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
    DMAR02RDSP05 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
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
    DMAR02RDSP06 = {
      ami                    = "ami-0f415d47ca4b2e660"
      instance_type          = "r5.2xlarge"
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
    DMAR02APPP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02APPP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02APPP03 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02APPP04 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02APPP05 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.4xlarge"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 700
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
    DMAR02SECP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.large"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02RPTP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02INTP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02INTP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.large"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02WEBP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
    DMAR02BRKP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 175
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

# Sun 6.4 upgrade project PROD Environment code END

# Sun 6.4 upgrade project UAT Environment code START

    DMAR02SQLU01 = {
      ami                    = "ami-0250fc55ee8191e51"
      instance_type          = "r5.xlarge"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdb = {
          volume_type = "gp3"
          volume_size = 200
          throughput  = 125
          iops        = 3000
        }
        sdc = {
          volume_type = "gp3"
          volume_size = 900
          throughput  = 125
          iops        = 3000
        }
        sdd = {
          volume_type = "gp3"
          volume_size = 300
          throughput  = 125
          iops        = 3000
        }
        sde = {
          volume_type = "gp3"
          volume_size = 40
          throughput  = 125
          iops        = 3000       
        }
        sdf = {
          volume_type = "gp3"
          volume_size = 60
          throughput  = 125
          iops        = 3000       
        }
        sdg = {
          volume_type = "gp3"
          volume_size = 50
          throughput  = 125
          iops        = 3000        
        }
        sdh = {
          volume_type = "gp3"
          volume_size = 30
          throughput  = 125
          iops        = 3000        
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }
    DMAR02RDSU01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.2xlarge"
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
    DMAR02APPU01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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
    DMAR02APPU02 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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
    DMAR02APPU03 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.4xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 400
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
    DMAR02WEBU01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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

# Sun 6.4 upgrade project UAT Environment code END


#Rehosted Servers for MSI-MIgration-GEN2

  
  
  
  }

#Rehosted Servers for MSI-MIgration-GEN2 Code END

#Replatform Reverse Proxy for Migration-GEN2

  rpx = {
    DMAR02RPX01 = {
      ami                    = "ami-0fe0ceac7a4b3c970"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      key_name               = "mariestopes"
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app,local.sg.custom_app]
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
        "Patch Group"            = "Linux"
      }
    }
  }
 
  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DMAR02"
  }
}


