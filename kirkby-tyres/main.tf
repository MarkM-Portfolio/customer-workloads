module "ec2" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.ec2

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

module "hana" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.hana


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

module "patching" {
  source                         = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london                = "cron(00 01 ? * WED#3 *)"
  schedule_london_two            = "cron(00 05 ? * WED#3 *)"

}


module "custom__sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.migration.id
  ingress_with_cidr_blocks = [
    {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      description = "Allow ICMP PING"
      cidr_blocks = "193.0.3.0/25"
    },
    {
      from_port   = 9100
      to_port     = 9100
      protocol    = "tcp"
      description = "Allow connection for VPN"
      cidr_blocks = "193.0.3.0/25"
    },
    {
      from_port   = 9100
      to_port     = 9100
      protocol    = "udp"
      description = "Allow connection for VPN"
      cidr_blocks = "193.0.3.0/25"
    }
  ]
}