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
    custom_app    = data.aws_security_group.custom_app.id
    migration     = data.aws_security_group.migration.id
    cutover_test  = data.aws_security_group.cutover_test.id
    rds_broker = data.aws_security_group.rds_broker.id
    shared_service_app = data.aws_security_group.shared_service_app.id
  }

  # Domain Controllers
  dc = {
    DJAC01DCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
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

    DJAC01DCP02 = {
      ami                    = "ami-062bc60a99aad8787"
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

  # Citrix Connectors
  cc = {
    DJAC01CCP01 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
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

    DJAC01CCP02 = {
      ami                    = "ami-062bc60a99aad8787"
      instance_type          = "t3.medium"
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

  # Re-host boxes
  app = {
  GEN2JACAPP01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 200
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
  GEN2JACAPP02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 200
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
  GEN2JACBRK01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration, local.sg.rds_broker, local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 50
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
  GEN2JACSQL01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "r5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.data_a
    vpc_security_group_ids = [local.sg.baseline_data, local.sg.migration, local.sg.custom_app]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
        throughput            = 250
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
        volume_size = 1880
        throughput            = 150
        iops                  = 3000
        volume_type = "gp3"
      }
      sdc = {
        volume_size = 50
        throughput            = 150
        iops                  = 3000
        volume_type = "gp3"
      }
      sdd = {
        volume_size = 30
        throughput            = 150
        iops                  = 3000
        volume_type = "gp3"
      }
      sde = {
        volume_size = 400
        volume_type = "gp3"
      }
      sdf = {
        volume_size = 1240
        throughput            = 150
        iops                  = 3000
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  GEN2JACRDS02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2JACRDS03 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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
  GEN2JACRDS01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 150
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


  tags = {
    "scheduler:ebs-snapshot" = "Yes"
    CustomerName = nonsensitive(data.aws_ssm_parameter.customer.value)
    Environment  = nonsensitive(data.aws_ssm_parameter.environment.value)
    map-migrated = var.map_migrated
    CustomerID   = "DJAC01"
  }
}

