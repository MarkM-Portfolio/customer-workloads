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
module "app" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.app
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
module "sqlhapoc" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.sqlhapoc
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
module "ctxopt" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.ctxopt
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
      from_port   = 4933
      to_port     = 4933
      protocol    = "tcp"
      description = "RD Gateway access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 5033
      to_port     = 5033
      protocol    = "tcp"
      description = "RD Gateway access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 8081
      to_port     = 8081
      protocol    = "tcp"
      description = "RD Gateway access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 8082
      to_port     = 8082
      protocol    = "tcp"
      description = "RD Gateway access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 8083
      to_port     = 8083
      protocol    = "tcp"
      description = "RD Gateway access"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london     = "cron(0 30 23 ? * MON#3 *)"
  schedule_london_two = "cron(0 30 23 ? * WED#4 *)"
}
/* module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.0.1"
} */

#Create S3 Buckets#

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "sapdev-hana"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */