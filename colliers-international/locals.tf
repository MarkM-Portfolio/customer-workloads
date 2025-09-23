locals {
  region      = data.aws_ssm_parameter.region.value
  environment = data.aws_ssm_parameter.environment.value
  customer    = data.aws_ssm_parameter.customer.value

  subnet = {
    app_a  = data.aws_subnet.app_a.id
    data_a = data.aws_subnet.data_a.id
    app_b  = data.aws_subnet.app_b.id
    data_b = data.aws_subnet.data_b.id
  }

  sg = {
    baseline_app  = data.aws_security_group.baseline_app.id
    baseline_data = data.aws_security_group.baseline_data.id
    migration     = data.aws_security_group.migration.id
    cutover_test  = data.aws_security_group.cutover_test.id
    rds_broker    = data.aws_security_group.rds_broker.id
  }
  dc = {
    # Decomissioning the ec2 instance as part of the change ticket 7000060497 - 26 December 2024
    /*
    # Domain Controller
    DCOL08DCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
    #Cloud Connectors
    DCOL08CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    DCOL08CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    */
  }
 

  app = {

    # Decomissioning the ec2 instance as part of the change ticket 7000060497 - 26 December 2024
    /*
    GEN2COLDMZ01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
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
    GEN2COLDMZ02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
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
    GEN2COLHM01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 500
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
          volume_size = 20
          volume_type = "gp3"
        }
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
    GEN2COLDMZ03 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 50
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
    GEN2COLRDS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
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
    GEN2COLRDS02 = {
      ami                    = "ami-01cf290462d2f190d"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
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
    GEN2COLBRK01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 50
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
    gen2colhana01 = {
      ami                    = "ami-0b4a2ae6a4c56068d"
      instance_type          = "r5.4xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data]
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
          volume_size = 1200
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Linux"
      }
    }
    */
  }

  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DCOL08"
  }
}
