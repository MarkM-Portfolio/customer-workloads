module "domain_controller" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.dc

  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  monitoring             = each.value.monitoring

  enable_volume_tags = false
  root_block_device  = lookup(each.value, "root_block_device", [])
  ebs_volume         = lookup(each.value, "ebs_volume", {})

  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "app" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.app

  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")

  enable_volume_tags = false
  root_block_device  = lookup(each.value, "root_block_device", [])
  ebs_volume         = lookup(each.value, "ebs_volume", {})

  tags = merge(
    each.value.tags,
    local.tags
  )
}


module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london     = "cron(0 00 18 ? * WED#2 *)"
  schedule_london_two = "cron(0 00 21 ? * WED#3 *)"

}

module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 25
      to_port     = 25
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 3001
      to_port     = 3001
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 30000
      to_port     = 33000
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 6181
      to_port     = 6181
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 1443
      to_port     = 1443
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 31417
      to_port     = 31418
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 5002
      to_port     = 5002
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 9205
      to_port     = 9205
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "rds_broker" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.rds_broker.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "RDS broker access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 4433
      to_port     = 4433
      protocol    = "tcp"
      description = "RDS broker access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 4434
      to_port     = 4434
      protocol    = "tcp"
      description = "RDS broker access"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "dashboard" {
  source = "./module/dashboard"

  dashboard_name = "BordBia_Monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"

}