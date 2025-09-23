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
  }

  #################### Domain controllers and Citrix connectors ###########################



  dc1 = {
    DSTA04DCP03 = {
      ami                    = "ami-062bc60a99aad8787"
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
        "Patch Group"            = "Windows"
      }
    }

    DSTA04DCP04 = {
      ami                    = "ami-062bc60a99aad8787"
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
        "Patch Group"            = "Windows"
      }
    }
  }
  app = {
    GEN2MCAPP01 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.xlarge"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCAPP02 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.xlarge"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCAPP03 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCAPP04 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCAPP05 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCDMZ01 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "m5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCHM01 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "r5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
          volume_size = 500
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdd = {
          volume_size = 20
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2MCRDS01 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "r5.xlarge"
      iam_instance_profile = "SSMInstanceProfile"
      ##monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCRDS02 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "r5.xlarge"
      iam_instance_profile = "SSMInstanceProfile"
      ###monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCDMZ02 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "t3.medium"
      iam_instance_profile = "SSMInstanceProfile"
      ###monitoring = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
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
    GEN2MCSQL01 = {
      ami                  = "ami-00c06ea250daa1a4f"
      instance_type        = "r5.large"
      iam_instance_profile = "SSMInstanceProfile"
      ###monitoring = var.monitoring
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration, local.sg.custom_app]
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
          volume_size = 40
          volume_type = "gp3"
        }
        sdd = {
          volume_size = 20
          volume_type = "gp3"
        }
        sdg = {
          volume_size = 350
          volume_type = "gp3"
        }
        sde = {
          volume_size = 40
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 50
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 200
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }


  # Citrix Connectors1
  cc1 = {

    DSTA04CCP03 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 100
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    DSTA04CCP04 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 100
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }
  }

  # HANA Server
  hana = {
    DSTA04HANAP01 = {
      ami                    = "ami-0c7413f38907f5aea"
      instance_type          = "r5.12xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      key_name               = "marke"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data, local.sg.custom_app]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 150
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      ebs_volume = {
        sdb = {
          volume_size = 1300
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
      }

      tags = merge(local.tags, { "Patch Group" = "Linux" })
    }
  }


  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DSTA04"
  }
}
