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
    baseline_app  = data.aws_security_group.baseline_app.id
    baseline_data = data.aws_security_group.baseline_data.id
    migration     = data.aws_security_group.migration.id
    cutover_test  = data.aws_security_group.cutover_test.id
  }

  ec2 = {
    # Domain Controller
    DWAN03DCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
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

    # Citrix Cloud Connector
    DWAN03CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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

    # Citrix Cloud Connector
    # Comment David Andrew
    DWAN03CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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

    # DMZ host
    GEN2LHDMZ01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 50
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    # Citrix terminal
    GEN2LHRDS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 150
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    # SQL DB
    GEN2LHSQL01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 180
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      ebs_volume = {
        sdb = {
          volume_size = 40
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdc = {
          volume_size = 50
          volume_type = "gp3"
          throughput  = 590
          iops        = 6000
        }
        sdd = {
          volume_size = 20
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
        sdf = {
          volume_size = 850
          volume_type = "gp3"
          throughput  = 590
          iops        = 6000
        }
        sdg = {
          volume_size = 40
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdh = {
          volume_size = 300
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
        sdi = {
          volume_size = 20
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
      }
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    # SQL DB
    GEN2LHUSQL01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "r5.xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_b
      vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 80
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      ebs_volume = {
        sdb = {
          volume_size = 350
          volume_type = "gp3"
          throughput  = 125
          iops        = 3000
        }
      }
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    # Citrix terminal
    GEN2LHURDS01 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_b
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 150
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }

    # Citrix terminal
    GEN2LHRDS02 = {
      ami                    = "ami-00c06ea250daa1a4f"
      instance_type          = "m5.large"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.app_a
      vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
      root_block_device = [{
        encrypted             = true
        volume_type           = "gp3"
        volume_size           = 150
        throughput            = 125
        iops                  = 3000
        delete_on_termination = false
        tags                  = local.tags
      }]
      tags = merge(local.tags, { "Patch Group" = "Windows" })
    }
  }

  tags = {
    "scheduler:ebs-snapshot" = "Yes"

    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DWAN03"
  }
}
