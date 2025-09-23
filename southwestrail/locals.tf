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
    infor_sg           = data.aws_security_group.infor_sg.id
  }

  dc = {
    DSOU05DCP01 = {
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
    # connectors
    DSOU05CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
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
        "Patch Group"            = "Windows"
      }
    }

    DSOU05CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
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
        "Patch Group"            = "Windows"
      }
    }
  }


  app = {

    # UAT Environment

    GEN2SWRADFS02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      # Previous instance_type          = "m5.xlarge"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    GEN2SWREAM04 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
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
          volume_size = 100
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2SWRSQL02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
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
        sdd = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdc = {
          volume_size = 201
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdb = {
          volume_size = 30
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdf = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdh = {
          volume_size = 250
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sde = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdg = {
          volume_size = 50
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdi = {
          volume_size = 30
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2SWRINFO02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.infor_sg]
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
          volume_size = 100
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2SWREAM03 = {
      ami                    = "ami-00c06ea250daa1a4f"
      # Previous instance_type          = "m5.xlarge"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
          volume_size = 100
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }


    # Prod Environment Servers
    GEN2SWRINFO01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.infor_sg]
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
    GEN2SWRADFS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    GEN2SWREAM02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.custom_app]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp2"
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
    GEN2SWREAM01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      # Previous instance_type          = "m5.2xlarge"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
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
          volume_size = 100
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2SWRRDS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    GEN2SWRSQL01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 80
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
        sdc = {
          volume_size = 501
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdb = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdd = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sde = {
          volume_size = 80
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdg = {
          volume_size = 50
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdf = {
          volume_size = 80
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdh = {
          volume_size = 400
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdi = {
          volume_size = 100
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdj = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }

    # New Environment Servers


    DSOU05EAM05 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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
      ebs_volume = {
        sdb = {
          volume_size = 100
          volume_type = "gp3"
        }
      }      
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }

    DSOU05EAM06 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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
      ebs_volume = {
        sdb = {
          volume_size = 100
          volume_type = "gp3"
        }
      }      
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }

    DSOU05EAM07 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.large"
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
      ebs_volume = {
        sdb = {
          volume_size = 100
          volume_type = "gp3"
        }
      }      
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }

    DSOU05EAM08 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.xlarge"
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
      ebs_volume = {
        sdb = {
          volume_size = 100
          volume_type = "gp3"
        }
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
    CustomerID   = "DSOU05"
  }
}

