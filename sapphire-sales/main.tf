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

module "cloud_connectors" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each = local.cc

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
      from_port   = 5002
      to_port     = 5002
      protocol    = "tcp"
      description = "Inbound to 5002"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 9205
      to_port     = 9205
      protocol    = "tcp"
      description = "Inbound to 9205"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 444
      to_port     = 444
      protocol    = "tcp"
      description = "Inbound to 444"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 6181
      to_port     = 6181
      protocol    = "tcp"
      description = "Inbound to 6181"
      cidr_blocks = "0.0.0.0/0"
    },

  ]
}

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london     = "cron(0 00 18 ? * TUE#3 *)"
  schedule_london_two = "cron(0 00 18 ? * TUE#3 *)" 
} 