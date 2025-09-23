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

  # Domain Controllers Brentford FC * 2

  dc = {
    DBRE04DC01 = {
      ami                    = "ami-030a28fdc9023ad21"
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
    DBRE04DC02 = {
      ami                    = "ami-030a28fdc9023ad21"
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

    DBRE04RDSP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    ### Copy Above for next server

    DBRE04RDSP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04HMP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    # DBRE04BRK01 = {
    #   ami                    = "ami-030a28fdc9023ad21"
    #   instance_type          = "t2.medium"
    #   iam_instance_profile   = "SSMInstanceProfile"
    #   monitoring             = false
    #   subnet_id              = local.subnet.app_a
    #   vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    #   root_block_device = [
    #     {
    #       encrypted             = true
    #       volume_type           = "gp3"
    #       volume_size           = 100
    #       delete_on_termination = false
    #       tags = merge({
    #         "scheduler:ebs-snapshot" = "Yes"
    #         },
    #         local.tags
    #       )
    #     }
    #   ]
    #   tags = {
    #     "scheduler:ebs-snapshot" = "Yes"
    #     "Patch Group"            = "Windows"
    #   }
    # }

    # DBRE04APP01 = {
    #   ami                    = "ami-030a28fdc9023ad21"
    #   instance_type          = "t2.medium"
    #   iam_instance_profile   = "SSMInstanceProfile"
    #   monitoring             = false
    #   subnet_id              = local.subnet.app_a
    #   vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    #   root_block_device = [
    #     {
    #       encrypted             = true
    #       volume_type           = "gp3"
    #       volume_size           = 100
    #       delete_on_termination = false
    #       tags = merge({
    #         "scheduler:ebs-snapshot" = "Yes"
    #         },
    #         local.tags
    #       )
    #     }
    #   ]
    #   tags = {
    #     "scheduler:ebs-snapshot" = "Yes"
    #     "Patch Group"            = "Windows"
    #   }
    # }

    # DBRE04APP02 = {
    #   ami                    = "ami-030a28fdc9023ad21"
    #   instance_type          = "t2.xlarge"
    #   iam_instance_profile   = "SSMInstanceProfile"
    #   monitoring             = false
    #   subnet_id              = local.subnet.app_b
    #   vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    #   root_block_device = [
    #     {
    #       encrypted             = true
    #       volume_type           = "gp3"
    #       volume_size           = 100
    #       delete_on_termination = false
    #       tags = merge({
    #         "scheduler:ebs-snapshot" = "Yes"
    #         },
    #         local.tags
    #       )
    #     }
    #   ]
    #   tags = {
    #     "scheduler:ebs-snapshot" = "Yes"
    #     "Patch Group"            = "Windows"
    #   }
    # }

    # DBRE04APP03 = {
    #   ami                    = "ami-030a28fdc9023ad21"
    #   instance_type          = "t2.xlarge"
    #   iam_instance_profile   = "SSMInstanceProfile"
    #   monitoring             = false
    #   subnet_id              = local.subnet.app_a
    #   vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    #   root_block_device = [
    #     {
    #       encrypted             = true
    #       volume_type           = "gp3"
    #       volume_size           = 100
    #       delete_on_termination = false
    #       tags = merge({
    #         "scheduler:ebs-snapshot" = "Yes"
    #         },
    #         local.tags
    #       )
    #     }
    #   ]
    #   tags = {
    #     "scheduler:ebs-snapshot" = "Yes"
    #     "Patch Group"            = "Windows"
    #   }
    # }

    DBRE04CCP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04CCP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04FASP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04FASP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.small"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04INTP01 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04INTP02 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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

    DBRE04INTP03 = {
      ami                    = "ami-030a28fdc9023ad21"
      instance_type          = "t3.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
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
  }

  hana = {
    DBRE04HANADB01 = {
      ami                    = "ami-0c513293e98721e7e"
      instance_type          = "r5.4xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = false
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration, local.sg.custom_app]
      key_name = "Brentfordfc_keypair" 
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
  }


  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DBRE04"
  }
}
