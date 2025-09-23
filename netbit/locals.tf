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
    DNET03DCP01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      monitoring             = var.monitoring
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
  }

  /*cc = {
  }*/

  app = {
    DNET03VDAP01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "m5.xlarge"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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

    DNET03SQLP01 = {
      ami                    = "ami-04eb1e9b1e69abdf4"
      instance_type          = "r5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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
      # Additional volumes
      ebs_volume = {
        # SQL data
        sdb = {
          volume_type           = "gp3"
          volume_size           = 250
          throughput            = 125
          iops                  = 3000
        }
        # SQL backups 
        sdc = {
          volume_type           = "gp3"
          volume_size           = 200
          throughput            = 125
          iops                  = 3000
        }
        # SQL binaries
        sdd = {
          volume_type           = "gp3"
          volume_size           = 20
          throughput            = 125
          iops                  = 3000
        }
        # SQL logs
        sde = {
          volume_type           = "gp3"
          volume_size           = 100
          throughput            = 125
          iops                  = 3000
        }
        # SQL pagefile
        sdf = {
          volume_type           = "gp3"
          volume_size           = 30
          throughput            = 125
          iops                  = 3000
        }
        # SQL TempDB
        sdg = {
          volume_type           = "gp3"
          volume_size           = 30
          throughput            = 125
          iops                  = 3000
        }
        # Shared drive and User Profiles
        sdh = {
          volume_type           = "gp3"
          volume_size           = 30
          throughput            = 125
          iops                  = 3000
        }

      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Windows"
      }
    }  

  }
  
  /*hana = {
  }*/

  tags = {
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DNET03"
  }
}
