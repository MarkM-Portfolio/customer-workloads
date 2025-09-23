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
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
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
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.cc
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

module "custom-citrix-sg" {
  source      = "terraform-aws-modules/security-group/aws"
  name        = "custom-citrix-sg"
  description = "Security group to allow Citrix Licenses for GEN#2-Beyond Customers"
  vpc_id      = data.aws_vpc.this.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "All connections from Citrix Service Domain-GEN#2"
      cidr_blocks = "10.245.0.0/16,10.246.0.0/16"
    },
  ]
  tags = {
    Name         = "custom-citrix-sg"
    CustomerName = "${local.customer}"
    Environment  = "${local.environment}"
  }
}

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london     = "cron(0 30 23 ? * MON#3 *)"
  schedule_london_two = "cron(0 30 23 ? * WED#4 *)"
}
