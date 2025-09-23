#An e ample of how to deploy ec2 instance/s
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

/* module "domain_controller" {
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
} */

module "citrix_controller" {
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

/* module "hana" {
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
} */
module "revproxy" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each = local.rpx

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
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "176.58.105.157/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "81.178.101.110/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "150.143.2.220/32"
    },

    {
      from_port   = 2205
      to_port     = 2205
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "176.58.105.157/32"
    },
    {
      from_port   = 2205
      to_port     = 2205
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "81.178.101.110/32"
    },
    {
      from_port   = 2205
      to_port     = 2205
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "150.143.2.220/32"
    },
    {
      from_port   = 4733
      to_port     = 4733
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 5081
      to_port     = 5081
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "204.90.182.1/32"
    },
    {
      from_port   = 5081
      to_port     = 5081
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "204.90.182.2/32"
    },
    {
      from_port   = 5081
      to_port     = 5081
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "204.90.182.3/32"
    },
    {
      from_port   = 5081
      to_port     = 5081
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "82.71.186.165/32"
    },
    {
      from_port   = 30000
      to_port     = 30000
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 23
      to_port     = 23
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 81
      to_port     = 81
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 82
      to_port     = 82
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 12540
      to_port     = 12540
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 12520
      to_port     = 12520
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 30001
      to_port     = 30001
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 135
      to_port     = 135
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 139
      to_port     = 139
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 445
      to_port     = 445
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 9100
      to_port     = 9100
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
    {
      from_port   = 9101
      to_port     = 9101
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "192.168.8.0/22"
    },
  /*   {
      from_port   = 50000
      to_port     = 50000
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "0.0.0.0/0"
    }, */
    {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      description = "ICMP access"
      cidr_blocks = "192.168.8.0/22"
    }


  ]
}

module "patching" {
  source          = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london = "cron(0 00 05 ? * SAT#2 *)"

}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */