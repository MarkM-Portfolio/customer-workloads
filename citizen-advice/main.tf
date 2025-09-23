module "domain_controller" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.dc

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

module "cc" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.cc


  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")

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
  source                         = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london                = "cron(0 30 23 ? * TUE#3 *)"
  schedule_london_two            = "cron(0 30 23 ? * TUE#3 *)"
}

module "custom_brk_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.rds_broker.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 4434
      to_port     = 4434
      protocol    = "tcp"
      description = "Inbound to 4434"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}

module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 4403
      to_port     = 4403
      protocol    = "tcp"
      description = "Inbound to 4403"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 4404
      to_port     = 4404
      protocol    = "tcp"
      description = "Inbound to 4404"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 8443
      to_port     = 8443
      protocol    = "tcp"
      description = "Inbound to 8443"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/windows-dashboard?ref=feat/dashboard"

  dashboard_name = "citizen-advice-monitoring"
  cw_period      = 60
  region         = "eu-west-2"
  view           = "timeSeries"
}