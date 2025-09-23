/* module "dc" {
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
} */

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
module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [

    {
      from_port   = 40000
      to_port     = 40000
      protocol    = "tcp"
      description = "Inbound rule for custom ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 8100
      to_port     = 8100
      protocol    = "tcp"
      description = "Inbound rule for custom ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 50000
      to_port     = 50000
      protocol    = "tcp"
      description = "Inbound rule for custom ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 5443
      to_port     = 5443
      protocol    = "tcp"
      description = "Inbound rule for custom ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.0.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.1.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.2.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.12.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.13.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from network"
      cidr_blocks = "10.0.4.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from London"
      cidr_blocks = "10.10.0.0/24"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Inbound all traffic from HarleyDavidson"
      cidr_blocks = "10.11.108.0/22"
    }
  ]
}
module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_ohio       = "cron(0 30 23 ? * WED#3 *)"
  }



