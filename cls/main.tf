# An example of how to deploy ec2 instance/s
module "app" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

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

module "dc" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.dc
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  monitoring             = each.value.monitoring
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "cc" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.cc
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "hana" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each = local.hana

  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  monitoring             = each.value.monitoring

  enable_volume_tags = false
  root_block_device  = lookup(each.value, "root_block_device", [])
  ebs_volume         = lookup(each.value, "ebs_volume", {})

  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "213.52.134.215/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "38.65.13.164/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "209.112.104.0/22"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "64.207.216.0/22"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "162.248.184.0/22"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "52.237.17.101/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "52.237.17.162/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "52.235.28.220/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "52.235.31.13/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "185.81.100.0/22"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "192.103.120.0/22"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "13.72.248.93/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "13.72.249.142/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "13.70.141.103/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "13.70.136.159/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "54.240.32.183/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "80.244.181.153/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open custom ports"
      cidr_blocks = "81.106.139.49/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Management Access"
      cidr_blocks = "172.30.0.0/16"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "VPC Access"
      cidr_blocks = "10.12.216.0/22"
    }
  ]
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Open outbound"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "patching" {
  source          = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london = "cron(0 30 23 ? * THU#2 *)"
}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */