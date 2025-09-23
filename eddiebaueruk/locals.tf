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

  app = {
  EU05HWIN01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.2xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 101
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
        volume_size = 430
        volume_type = "gp3"
      }
      sdb = {
        volume_size = 290
        volume_type = "gp3"
      }
    }
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  EU05HWIN02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 110
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
  EU05HWIN03 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 180
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
  EU05RDS03 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 92
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
  EU05RDSTEST = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.xlarge"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_b
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 80
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
  EU05RDS02 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "m5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
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
    tags = {
      "scheduler:ebs-snapshot" = "Yes"
      "Patch Group"            = "Windows"
    }
  }
  EU05RDS01 = {
    ami = "ami-00c06ea250daa1a4f"
    instance_type = "r5.large"
    iam_instance_profile   = "SSMInstanceProfile"
    #monitoring = var.monitoring
    subnet_id = local.subnet.app_a
    vpc_security_group_ids = [local.sg.baseline_app, local.sg.migration]
    root_block_device = [
      {
        encrypted = true
        volume_type = "gp3"
        volume_size = 92
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
    DEDD01HANAP01 = {
      ami                    = "ami-0f97b4b41ed5aa627"
      instance_type          = "m4.16xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      monitoring             = true
      key_name               = "eddiebaueruk"
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
          volume_size = 1500
          volume_type = "gp3"
        }
      }
      tags = {
        "scheduler:ebs-snapshot" = "Yes"
        "Patch Group"            = "Linux"
      }
    }
    DEDD01HANAU01 = {
      ami                    = "ami-0f97b4b41ed5aa627"
      instance_type          = "m4.16xlarge"
      iam_instance_profile   = "SSMInstanceProfile"
      subnet_id              = local.subnet.data_a
      monitoring             = true
      key_name               = "eddiebaueruk"
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
          volume_size = 1500
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
    CustomerID   = "DEDD01"
  }
}
