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

module "domain_controller" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each = local.dc

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

module "cc" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

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

module "citrix" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each = local.citrix

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
  schedule_london     = "cron(0 30 23 ? * MON#3 *)"
  schedule_london_two = "cron(0 30 23 ? * WED#4 *)"
}

module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
}

module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false 
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "62.232.230.226/32,80.3.134.219/32,89.206.255.3/32,81.111.78.206/32,182.237.191.229/32,146.200.10.248/32,81.106.139.49/32"
    },
    {
      from_port   = 2030
      to_port     = 2030
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "62.232.230.226/32,80.3.134.219/32,89.206.255.3/32,81.111.78.206/32,182.237.191.229/32,146.200.10.248/32,81.106.139.49/32"
    },

  ]


}

module "custom-uat-sg" {
  source      = "terraform-aws-modules/security-group/aws"
  name        = "custom-uat-ag"
  description = "Security group to allow 7822 to UAT box"
  vpc_id      = data.aws_vpc.this.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 7822
      to_port     = 7822
      protocol    = "-1"
      description = "All connections from on-prem and shared services VPC"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  tags = {
    Name         = "custom-uat-ag"
    CustomerName = "${local.customer}"
    Environment  = "${local.environment}"
  }
}