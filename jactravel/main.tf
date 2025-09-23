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
  schedule_london                = "cron(0 30 23 ? * THU#3 *)"
  schedule_london_two            = "cron(0 30 23 ? * THU#3 *)"
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
      description = "Inbound access for custom applications"
      cidr_blocks = "83.138.161.15/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "83.138.161.15/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "89.206.255.3/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "89.206.255.3/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "80.3.134.219/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "80.3.134.219/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "183.87.41.158/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "183.87.41.158/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "116.72.126.1/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "116.72.126.1/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "85.92.216.114/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "85.92.216.114/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "161.12.48.0/26"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "161.12.48.0/26"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "213.161.88.32/27"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "213.161.88.32/27"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "81.111.78.206/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "81.111.78.206/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "5.148.150.58/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "5.148.150.58/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "80.0.68.30/32"
    },
    {
      from_port   = 2021
      to_port     = 2021
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "80.0.68.30/32"
    },
    {
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Inbound access for custom applications"
      cidr_blocks = "10.48.0.9/32"
    },
    {
      from_port = 0
      to_port = 0
      protocol = "all"
      description = "Inbound access for custom applications"
      cidr_blocks = "10.48.0.9/32"
    },
    {
      from_port = 0
      to_port = 0
      protocol = "all"
      description = "Inbound access for custom applications"
      cidr_blocks = "10.142.210.0/23"
    },
    {
      from_port = 0
      to_port = 0
      protocol = "all"
      description = "Inbound access for custom applications"
      cidr_blocks = "10.142.110.0/23"
    }
  ]
} 