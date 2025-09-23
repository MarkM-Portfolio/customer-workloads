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
    infor_sg           = data.aws_security_group.infor_os.id
  }
  /*  dc = {

    DRKS01DCP03 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
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
    
  } */

  # Citrix Connectors
  cc = {
    DRKS01CCP03 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "r7i.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app, local.sg.custom_app]
      root_block_device = [{
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
        "resourcescheduler 2"    = "Yes"
      }
    }

    DRKS01CCP04 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "r7i.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app, local.sg.custom_app]
      root_block_device = [{
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
        "resourcescheduler 2"    = "Yes"
      }
    }
  }

  app = {
    GEN2RKSRDS01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
      ebs_volume = {
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RKSRDS02 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    GEN2RKSRDS03 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    GEN2RKSAPP03 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    GEN2RKSAPP02 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    GEN2RKSRDS04 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    GEN2RKSAPP04 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
  # GEN2RKSAPP01 DECOMMISSION COMPLETED BY DHANANJAY CHANGE REFERENCE - 7000062380  
/*    GEN2RKSAPP01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    }*/
    GEN2RKSHM01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "m7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
      ebs_volume = {
        sdc = {
          volume_size = 550
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sdb = {
          volume_size = 16384
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    GEN2RKSAPP05 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
        "resourcescheduler 2"    = "Yes"
      }
    }
    GEN2RKSDMZ01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
        "resourcescheduler 2"    = "Yes"
      }
    }
    /* gen2rkshana01 = {
    ami = "ami-04ecfdf33a37e0ee1"
    instance_type = "r5.8xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    monitoring = var.monitoring
    subnet_id = local.subnet.data_a
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
        volume_size = 1500
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  } */
    gen2rkshana01 = {
      ami                    = "ami-0704f8171c0ec36d4"
      instance_type          = "r5.8xlarge"
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
      ebs_volume = {
        sdb = {
          volume_size = 1500
          throughput            = 125
          iops                  = 3000
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Linux"
      }
    }
    DRKS01BRK01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
        "resourcescheduler 2"    = "Yes"
      }
    }
    GEN2RKSSQL01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.4xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration,local.sg.custom_app]
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
        sdg = {
          volume_size = 30
          throughput            = 125
          iops                  = 3000
          volume_type = "gp3"
        }
        sdi = {
          volume_size = 200
          throughput            = 125
          iops                  = 3000
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 200
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sdb = {
          volume_size = 20
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sdc = {
          volume_size = 20
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sde = {
          volume_size = 30
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sdd = {
          volume_size = 50
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
        sdh = {
          volume_size = 20
          volume_type = "gp3"
          throughput            = 125
          iops                  = 3000
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
        "resourcescheduler 2"    = "Yes"
      }
    }
    drks01dcp01 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "t3.large"
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
    DRKS01RDS05 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
        "resourcescheduler 3"    = "Yes"
      }
    }
    GEN2RKSAPP06 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "r7i.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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

    DRKS01RDS06 = {
      ami                    = "ami-03a82ff6a1dfae53a"
      instance_type          = "r7i.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
        "resourcescheduler 3"    = "Yes"
      }
    }

    /*# Harley Davidson Citrx Terminal server for Single Sign-On

    DRKS01RDSP07 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    DRKS01RDSP08 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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

    # Harley Davidson Citrx Cloud connector server for Single Sign-On

    DRKS01CCP05 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    DRKS01CCP06 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration,local.sg.custom_app]
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
    }*/
  }

  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DRKS01"
  }
}
