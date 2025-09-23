# An example of how to deploy ec2 instance/s

module "app" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.app

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

module "osgapp" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.osgapp

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

module "cloud_connector" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.cc

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

module "rds" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.rds

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

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london     = "cron(0 00 18 ? * TUE#3 *)" # UAT
  schedule_london_two = "cron(0 00 18 ? * TUE#4 *)" # Production
}


module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 9251
      to_port     = 9251
      protocol    = "tcp"
      description = "Inbound to Konducta"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "rds_broker_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.rds_broker.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "Inbound to Konducta"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 4443
      to_port     = 4443
      protocol    = "tcp"
      description = "Inbound to RDS Broker"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 3391
      to_port     = 3391
      protocol    = "udp"
      description = "Inbound to rds broker"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound to rds broker"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 2023
      to_port     = 2023
      protocol    = "tcp"
      description = "Inbound to rds broker"
      cidr_blocks = "0.0.0.0/0"
    },

  ]
}

module "custom_infor_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.infor_os.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 29090
      to_port     = 29090
      protocol    = "tcp"
      description = "Inbound to 29090"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 40000
      to_port     = 40000
      protocol    = "tcp"
      description = "Inbound to 40000"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 55
      to_port     = 55
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 8983
      to_port     = 8983
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/windows-dashboard?ref=feat/dashboard"

  dashboard_name = "riverside-monitoring"
  cw_period      = 60
  region         = "eu-west-2"
  view           = "timeSeries"


}