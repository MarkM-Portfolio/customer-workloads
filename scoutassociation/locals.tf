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
    DSCO02DCP03 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
    DSCO02DCP04 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
  }



  app = {
    DSCO02APPP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.large"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }
    DSCO02APPPU01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }
    DSCO02SQLP01 = {
      ami                    = "ami-030a28fdc9023ad21"
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
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 300
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdc = {
          volume_size = 200
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdd = {
          volume_size = 50
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sde = {
          volume_size = 50
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdf = {
          volume_size = 70
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdg = {
          volume_size = 30
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdh = {
          volume_size = 100
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdi = {
          volume_size = 80
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdj = {
          volume_size = 20
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }
    DSCO02SQLU01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.xlarge"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 300
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdc = {
          volume_size = 200
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdd = {
          volume_size = 50
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sde = {
          volume_size = 50
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdf = {
          volume_size = 70
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdg = {
          volume_size = 30
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdh = {
          volume_size = 20
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdi = {
          volume_size = 80
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
        sdj = {
          volume_size = 20
          volume_type = "gp3"
          iops        = 3000
          throughput  = 125
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"

      }
    }

    DSCO02FASP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSCO02FASP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSCO02CCCP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.large"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSCO02CCCP02 = {
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
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSCO02RDSP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.2xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    DSCO02RDSU01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  DSCO02IOSP01 = {
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
          volume_size           = 100
          iops                  = 3000
          throughput            = 125
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 100
          volume_type = "gp3"
          iops = 3000
          throughput = 125
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  DSCO02ADFSP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 100
          delete_on_termination = false
          tags                  = local.tags
        }
      ]
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }
  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DSCO02"
  }
}
