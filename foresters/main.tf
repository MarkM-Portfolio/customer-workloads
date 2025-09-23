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

module "replatform" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.replatform

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
  schedule_london                = "cron(0 30 23 ? * MON#2 *)"
  schedule_london_two            = "cron(0 30 23 ? * MON#2 *)"
}


module "custom_infor_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.infor_sg.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 29090
      to_port     = 29090
      protocol    = "tcp"
      description = "Inbound to 29090"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 50001
      to_port     = 50001
      protocol    = "tcp"
      description = "Inbound to 50001"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 555
      to_port     = 555
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
    {
      from_port   = 40000
      to_port     = 40000
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22022
      to_port     = 22023
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 9553
      to_port     = 9553
      protocol    = "tcp"
      description = "Custom ports for InforOs"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
