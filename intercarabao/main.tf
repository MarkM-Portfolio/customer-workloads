 #An example of how to deploy ec2 instance/s
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

/* module "citrix_controller" {
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
} */

module "hana" {
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
}

module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = 50000
      to_port     = 50000
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "194.73.190.18/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "185.36.185.22/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "34.253.190.128/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.195.239.0/28"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.192/29"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.200/30"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.204/30"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "81.143.218.42/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "81.143.234.102/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.85.5/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.85.28/32"
    },
    {
      from_port   = 65009
      to_port     = 65009
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.93.5/32"
    }
    /* {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "194.73.190.18/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "185.36.185.22/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "34.253.190.128/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.195.239.0/28"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.192/29"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.200/30"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "54.217.255.204/30"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "81.143.218.42/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "81.143.234.102/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.85.5/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.85.28/32"
    },
    {
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      description = "Port access for HANA server- EDI Magma"
      cidr_blocks = "129.35.93.5/32"
    }, */

  ]
}

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london = "cron(0 00 17 ? * WED#2 *)" 
}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */