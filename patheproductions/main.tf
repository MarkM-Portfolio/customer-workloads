# An example of how to deploy ec2 instance/s

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

/* module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = xxxx
      to_port     = xxxx
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
} */

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london     = "cron(0 30 23 ? * THU#3 *)"
}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */