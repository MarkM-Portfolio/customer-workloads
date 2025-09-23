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
    shared_vpc         = data.aws_security_group.shared_vpc.id
  }

  # Domain Controllers
  dc = {
    DAFM01DCP01 = {
      ami                    = "ami-048087046880765f6"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data, local.sg.shared_vpc]
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

    DAFM01DCP02 = {
      ami                    = "ami-048087046880765f6"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_data]
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

  # App Servers

  app = {
    DAFM01HMP01 = {
      ami                    = "ami-048087046880765f6"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
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
          volume_size           = 80
          volume_type           = "gp3"
          throughput            = 125
          iops                  = 3000
        }
      }
      
      tags = merge(local.tags, { "Patch Group" = "Windows" })
      
    }

    DAFM01RDS01 = {
      ami                    = "ami-048087046880765f6"
      instance_type          = "m5.2xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.migration, local.sg.baseline_app]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 130
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }
    DAFM01RDS02 = {
      ami                    = "ami-0d31786960196d254"
      instance_type          = "m5.2xlarge"
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
    DAFM01INTP01 = {
      ami                    = "ami-048087046880765f6"
      instance_type          = "m5.xlarge"
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
    
  }

  hana = {

    DAFM01HANAP01 = {
      ami                    = "ami-08523c26519f6a845"
      instance_type          = "r5.8xlarge"
      key_name               = "afmsshkey"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      monitoring             = true
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration, local.sg.custom_app]
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
        sdb = {
          volume_size = 250
          volume_type = "gp3"
        }

        sdc = {
          volume_size = 250
          volume_type = "gp3"
        }
        sdd = {
          volume_size = 500
          volume_type = "gp3"
        }
        sde = {
          volume_size = 250
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
    "scheduler:ebs-snapshot" = "Yes"
    CustomerName             = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment              = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated             = var.map_migrated
    CustomerID               = "DAFM01"
  }
}




