module "domain_controller" {

  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each               = local.dc

  name                   = each.key

  ami                    = each.value.ami

  instance_type          = each.value.instance_type

  subnet_id              = each.value.subnet_id

  vpc_security_group_ids = each.value.vpc_security_group_ids

  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")

  enable_volume_tags     = false

  root_block_device      = lookup(each.value, "root_block_device", [])

  ebs_volume             = lookup(each.value, "ebs_volume", {})

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

module "replatform" {

  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each               = local.replatform

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

module "cc" {

  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

  for_each               = local.cc

  name                   = each.key

  ami                    = each.value.ami

  instance_type          = each.value.instance_type

  subnet_id              = each.value.subnet_id

  vpc_security_group_ids = each.value.vpc_security_group_ids

  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")

  enable_volume_tags     = false

  root_block_device      = lookup(each.value, "root_block_device", [])

  ebs_volume             = lookup(each.value, "ebs_volume", {})

  tags = merge(

    each.value.tags,

    local.tags

  )

}

module "custom_app" {

  source  = "terraform-aws-modules/security-group/aws"

  version = "4.9.0"
 
  create_sg         = false

  security_group_id = data.aws_security_group.custom_app.id

  ingress_with_cidr_blocks = [

    {

      from_port   = 4403

      to_port     = 4404

      protocol    = "-1"

      description = "Dashboards and webservices access"

      cidr_blocks = "0.0.0.0/0"

    },

    {

      from_port   = 2029

      to_port     = 2029

      protocol    = "tcp"

      description = "Open custom ports"

      cidr_blocks = "0.0.0.0/0"

    },

    {

      from_port   = 22

      to_port     = 22

      protocol    = "tcp"

      description = "Open sftp ports"

      cidr_blocks = "0.0.0.0/0"

    },
 
  ]

}
 
module "patching" {

  source          = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"

  schedule_london = "cron(0 30 23 ? * TUE#2 *)"
 
}