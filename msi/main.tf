# An example of how to deploy ec2 instance/s
# module "app" {
#   source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"

#   for_each = local.app

#   name                   = each.key
#   ami                    = each.value.ami
#   instance_type          = each.value.instance_type
#   subnet_id              = each.value.subnet_id
#   vpc_security_group_ids = each.value.vpc_security_group_ids
#   iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
#   monitoring             = each.value.monitoring

#   enable_volume_tags = false
#   root_block_device  = lookup(each.value, "root_block_device", [])
#   ebs_volume         = lookup(each.value, "ebs_volume", {})

#   tags = merge(
#     each.value.tags,
#     local.tags
#   )
# }

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
/* module "migrated" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  for_each               = local.migrated
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
      from_port   = 5133
      to_port     = 5133
      protocol    = "tcp"
      description = "Web Traffic for Reverse Proxy/Broker for MarieStpes Int Domain"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 3391
      to_port     = 3391
      protocol    = "udp"
      description = "Web Traffic for Broker-MarieStopes Int Domain"
      cidr_blocks = "10.12.232.174/32"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "VPN traffic from MarieStopesInt Domain-Azure"
      cidr_blocks = "10.200.0.64/29"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "VPN traffic from MarieStopesInt Domain-Azure"
      cidr_blocks = "10.200.24.40/29"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "VPN Traffic from MSIUK-DCs-GEN2 Migrated"
      cidr_blocks = "10.50.10.0/23"
    },
    {
      from_port   = 4533
      to_port     = 4533
      protocol    = "tcp"
      description = "Web Traffic for Reverse Proxy/Broker for MSI UK Domain"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound SFTP traffic for MSI UK Domain"
      cidr_blocks = "103.236.134.226/32"
    },
    {
      from_port   = 2208
      to_port     = 2208
      protocol    = "tcp"
      description = "INbound SFTP For MSI UK Domain"
      cidr_blocks = "103.236.134.226/32"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound SFTP traffic for MSI UK Domain"
      cidr_blocks = "103.236.134.227/32"
    },
    {
      from_port   = 2208
      to_port     = 2208
      protocol    = "tcp"
      description = "INbound SFTP For MSI UK Domain"
      cidr_blocks = "103.236.134.227/32"
    },
    /* {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "Inbound SFTP traffic for MSI UK Domain"
      cidr_blocks = "81.106.139.49/32"
    },
    {
      from_port   = 2208
      to_port     = 2208
      protocol    = "tcp"
      description = "Inbound SFTP traffic for MSI UK Domain"
      cidr_blocks = "81.106.139.49/32"
    }, */
  /*   {
      from_port   = 9000
      to_port     = 9000
      protocol    = "tcp"
      description = "PA Auth Servr access"
      cidr_blocks = "0.0.0.0/0"
    }, */
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "Transfer Desk URL access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 55000
      to_port     = 55000
      protocol    = "tcp"
      description = "Transfer Desk URL access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 40100
      to_port     = 40100
      protocol    = "tcp"
      description = "Transfer Desk URL access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 40101
      to_port     = 40101
      protocol    = "tcp"
      description = "Transfer Desk URL access"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "tcp"
      description = "Transfer Desk URL access"
      cidr_blocks = "10.200.24.0/29"
    }

  ]
}


module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london     = "cron(0 00 19 ? * SAT#3 *)"

}

/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */