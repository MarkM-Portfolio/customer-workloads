locals {
  region      = data.aws_ssm_parameter.region.value
  environment = data.aws_ssm_parameter.environment.value
  customer    = data.aws_ssm_parameter.customer.value
  subnet_london = {
    app_a  = data.aws_subnet.app_a.id
    app_b  = data.aws_subnet.app_b.id
    data_a = data.aws_subnet.data_a.id
    data_b = data.aws_subnet.data_b.id
  }
  subnet_ohio = {
    app_a  = data.aws_subnet.ohio_app_a.id
    app_b  = data.aws_subnet.ohio_app_b.id
    data_a = data.aws_subnet.ohio_data_a.id
    data_b = data.aws_subnet.ohio_data_b.id
  }
  sapphire_beyond_subnet = {
    app_a  = data.aws_subnet.sb_app_a.id
    app_b  = data.aws_subnet.sb_app_b.id
    data_a = data.aws_subnet.sb_data_a.id
    data_b = data.aws_subnet.sb_data_b.id
  }
  sg_london = {
    baseline_app   = data.aws_security_group.baseline_app.id
    baseline_data  = data.aws_security_group.baseline_data.id
    custom_app     = data.aws_security_group.custom_app.id
    migration      = data.aws_security_group.migration.id
    cutover_test   = data.aws_security_group.cutover_test.id
    rds_broker     = data.aws_security_group.rds_broker.id
    shared_service = data.aws_security_group.shared_service.id
    #dc_to_fsx_sg   = module.fsx.dc_to_fsx_sg.id
  }
  sg_ohio = {
    baseline_app   = data.aws_security_group.ohio_baseline_app.id
    baseline_data  = data.aws_security_group.ohio_baseline_data.id
    custom_app     = data.aws_security_group.ohio_custom_app.id
    migration      = data.aws_security_group.ohio_migration.id
    cutover_test   = data.aws_security_group.ohio_cutover_test.id
    rds_broker     = data.aws_security_group.ohio_rds_broker.id
    shared_service = data.aws_security_group.ohio_shared_service.id
  }
  sb_sg_london = {
    baseline_app   = data.aws_security_group.sb_baseline_app.id
    baseline_data  = data.aws_security_group.sb_baseline_data.id
    custom_app     = data.aws_security_group.sb_custom_app.id
    migration      = data.aws_security_group.sb_migration.id
    cutover_test   = data.aws_security_group.sb_cutover_test.id
    rds_broker     = data.aws_security_group.sb_rds_broker.id
    shared_service = data.aws_security_group.sb_shared_service.id
  }

  controllers = {
    MGMT11DCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_london.data_a
      vpc_security_group_ids = [local.sg_london.migration, local.sg_london.baseline_data, local.sg_london.shared_service]
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
    MGMT11DCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_london.data_b
      vpc_security_group_ids = [local.sg_london.migration, local.sg_london.baseline_data, local.sg_london.shared_service]
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
    MGMT11CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_london.app_a
      vpc_security_group_ids = [local.sg_london.migration, local.sg_london.baseline_app, local.sg_london.shared_service]
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
    MGMT11CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_london.app_b
      vpc_security_group_ids = [local.sg_london.migration, local.sg_london.baseline_app, local.sg_london.shared_service]
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
    ####### Sapphire beyond servers #########################
    MGMT11DCP03 = {
      ami                    = "ami-002ff8afe869af24f"
      instance_type          = "t3.xlarge"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.data_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_data, local.sb_sg_london.shared_service]
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
    MGMT11DCP04 = {
      ami                    = "ami-002ff8afe869af24f"
      instance_type          = "t3.medium"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.data_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_data, local.sb_sg_london.shared_service]
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
    ### Sapphire beyond PKI server 1#####
    MGMT11PKIP01 = {
      ami                    = "ami-002ff8afe869af24f"
      instance_type          = "t3.medium"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    ### Sapphire beyond PKI server 2 #####
    MGMT11PKIP02 = {
      ami                    = "ami-002ff8afe869af24f"
      instance_type          = "t3.medium"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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

  beyond_Log_ohio = {
    MGMT11LOGP03 = {
      ami                    = "ami-024e6efaf93d85776"
      instance_type          = "t3.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_a
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_app, local.sg_ohio.shared_service]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 20
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


  /* Future Log Server After terraform correction 20/10/2023 David Andrew
beyond_Log_London = {
    MGMT11LOGP02 = {
      ami                    = "ami-0eb260c4d5475b901"
      instance_type          = "t2.small"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 20
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
*/

  siem_servers = {
    MGMT11CASIEM01 = {
      ami                    = "ami-0eb260c4d5475b901"
      instance_type          = "t3.large"
      iam_instance_profile   = "SSMInstanceProfile"
      key_name               = "shared-services"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 20
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
        "Patch Group"            = "LinuxUbuntu"
      }
    }

  }

  cyberark_ohio = {
    MGMT11CAPP07 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m4.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_a
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_app, local.sg_ohio.shared_service]
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
    MGMT11CAPP08 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "m4.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_b
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_app, local.sg_ohio.shared_service]
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
    MGMT11ZZTEST01 = {
      ami                    = "ami-0cc80d2a8e1d89ddc"
      instance_type          = "t2.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_a
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_app, local.sg_ohio.shared_service]
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
  /* Commented out until AMI is confirmed for 2022 David Andrew
  ### Sapphire beyond PKI server 3 #####
  pki_ohio = {
    MGMT11PKIP03 = {
      ami                    = "ami-002ff8afe869af24f"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.ohio_app_a
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_app, local.sg_ohio.shared_service]
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
*/

  #### Server for Monitoring Application ########
  monitoring_server = {
    MGMT11BOT01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      root_block_device = [
        {
          encrypted             = true
          volume_type           = "gp3"
          volume_size           = 128
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
          volume_size = 50
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }
  # Module for CAPP0C replacement for CAPP01 David Andrew 17/5/2024
  beyond_mgmt11capp0c = {

  }
  ###### Cyberark Servers ########
  beyond_servers = {
    MGMT11CAPP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11CAPP0A = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11CAPP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11CAPP05 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m4.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11CAPP06 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m4.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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

    ########## Auditing Servers #############
    MGMT11AUDP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11AUDP02 = {
      ami                    = "ami-0fb391cce7a602d1f"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      key_name               = "shared-services"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
        "Patch Group"            = "LinuxUbuntu"
      }
    }
    MGMT11RDGWP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
  ohio_dc = {
    CLOUDDCPR01 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_a
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_data, local.sg_ohio.shared_service]
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
    CLOUDDCPR02 = {
      ami                    = "ami-0e35fbc99da87fafe"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet_ohio.data_b
      vpc_security_group_ids = [local.sg_ohio.migration, local.sg_ohio.baseline_data, local.sg_ohio.shared_service]
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
  beyond_cc_servers = {
    MGMT11CCP03 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.xlarge"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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
    MGMT11CCP04 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m5.xlarge"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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

  # Citrix Single SignOn POC Cloud Connector 17 May 2024

  beyond_cc_servers_POC = {
    MGMT11CCP07 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "t3.medium"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
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

  ###### Manage Engine Servers London ########
  manage_engine_london = {
    MGMT11MEADM01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m4.xlarge"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    MGMT11MESQL01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "r5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.data_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_data, local.sb_sg_london.shared_service]
      root_block_device = [
        {
          encrypted   = true
          volume_type = "gp3"
          volume_size = 100
          throughput  = 125
          iops        = 3000
          tags = merge({
            "scheduler:ebs-snapshot" = "Yes"
            },
            local.tags
          )
        }
      ]
      ebs_volume = {
        sdb = {
          volume_size = 200
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
        sdc = {
          volume_size = 200
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
        sdd = {
          volume_size = 50
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
        sde = {
          volume_size = 50
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
        sdf = {
          volume_size = 70
          throughput  = 125
          iops        = 3000
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    MGMT11MESAT01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m4.xlarge"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
    MGMT11MESAT02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m4.xlarge"
      subnet_id              = local.sapphire_beyond_subnet.app_b
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }

    ###### AD Self-service portal London ########
    MGMT11ADSSP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "m4.xlarge"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }
  ###### Citrix License Servers ########
  citrix_london = {
    MGMT11CTXLIC01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }
  }

  zabbix_london_poc = {
    MGMT11ZABBIXP01 = {
      ami                    = "ami-085d19d0b7a9e3ad9"
      instance_type          = "t3.medium"
      key_name               = "shared-services"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.sapphire_beyond_subnet.data_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_data, local.sb_sg_london.shared_service]
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

  customers_backup_instance = {
    MGMT11DBBACKUP = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r4.xlarge"
      subnet_id              = local.sapphire_beyond_subnet.app_a
      vpc_security_group_ids = [local.sb_sg_london.migration, local.sb_sg_london.baseline_app, local.sb_sg_london.shared_service]
      iam_instance_profile   = "SSMInstanceProfile"
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
          volume_size = 50
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
    CustomerID   = "MGMT11"
  }
}