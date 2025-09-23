module "domain_controller_london" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.controllers
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
module "monitoring_server" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.monitoring_server
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "beyond_servers" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.beyond_servers
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
module "beyond_cc_servers" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.beyond_cc_servers
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
module "beyond_cc_servers_POC" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.beyond_cc_servers_POC
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
module "beyond_Log_ohio" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.ohio
  }
  for_each               = local.beyond_Log_ohio
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "MGMT11LOGP03.pem")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
/* Future Log Server After terraform correction 20/10/2023 David Andrew
module "beyond_Log_London" {
  source                 = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  for_each               = local.beyond_Log_London
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "shared-services")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
*/

module "domain_controller_ohio" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.ohio
  }
  for_each               = local.ohio_dc
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}
/* module "fsx" {
  source              = "./modules/fsx"
  storage_capacity    = 32
  subnet_ids          = [local.subnet_london.data_a, local.subnet_london.data_b]
  throughput_capacity = 32
  deployment_type     = "MULTI_AZ_1"
  preferred_subnet_id = local.subnet_london.data_a
  dns_ips             = ["172.18.5.99", "172.18.7.32"]
  domain_name         = "sapphire-cloud.net"
  password            = data.aws_ssm_parameter.fsx_password.value
  username            = data.aws_ssm_parameter.fsx_username.value
  customer_name       = data.aws_ssm_parameter.customer.value
  region              = data.aws_ssm_parameter.region.value
  vpc_id              = data.aws_vpc.this.id
} */

module "cyberark_ohio" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.ohio
  }
  for_each               = local.cyberark_ohio
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

/* module "pki_ohio" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.ohio
  }
  for_each               = local.pki_ohio
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

module "manage_engine_london" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.london
  }
  for_each               = local.manage_engine_london
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
module "citrix_london" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.london
  }
  for_each               = local.citrix_london
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

module "siem_servers" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"
  providers = {
    aws = aws.london
  }
  for_each               = local.siem_servers
  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = lookup(each.value, "iam_instance_profile", "")
  key_name               = lookup(each.value, "key_name", "")
  enable_volume_tags     = false
  root_block_device      = lookup(each.value, "root_block_device", [])
  ebs_volume             = lookup(each.value, "ebs_volume", {})
  tags = merge(
    each.value.tags,
    local.tags
  )
}

module "zabbix_london_poc" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.london
  }
  for_each               = local.zabbix_london_poc
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

module "customers_backup_instance" {
  source = "git@github.com:SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.1"
  providers = {
    aws = aws.london
  }
  for_each               = local.customers_backup_instance
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


resource "aws_route53_resolver_endpoint" "this" {
  name      = "Sapphirebeyond-Domain-Forrest"
  direction = "OUTBOUND"
  security_group_ids = [
    data.aws_security_group.sb_resolver.id,
  ]
  ip_address {
    subnet_id = data.aws_subnet.sb_data_a.id
  }
  ip_address {
    subnet_id = data.aws_subnet.sb_data_b.id
  }
}
resource "aws_route53_resolver_rule" "this" {
  domain_name          = "sapphirebeyond.local"
  name                 = "sapphirebeyond-local"
  rule_type            = "FORWARD"
  resolver_endpoint_id = aws_route53_resolver_endpoint.this.id
  target_ip {
    ip = module.domain_controller_london["MGMT11DCP03"].private_ip
  }
  target_ip {
    ip = module.domain_controller_london["MGMT11DCP04"].private_ip
  }
}
resource "aws_route53_resolver_rule_association" "this" {
  resolver_rule_id = aws_route53_resolver_rule.this.id
  vpc_id           = data.aws_vpc.sapphire_beyond.id
}
resource "aws_ram_resource_share" "this" {
  name                      = "sapphirebeyond-local-resolver-rules"
  allow_external_principals = true
}
resource "aws_ram_principal_association" "this" {
  principal          = "arn:aws:organizations::040572446079:organization/o-pr64s3jmxa"
  resource_share_arn = aws_ram_resource_share.this.arn
}
resource "aws_ram_resource_association" "this" {
  resource_arn       = aws_route53_resolver_rule.this.arn
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_instance" "MGMT11LOGP02" {
  ami           = "ami-0eb260c4d5475b901"
  instance_type = "t3.xlarge"
  key_name      = "shared-services"
  tags = {
    "Name" = "MGMT11LOGP02"

  }
  tags_all = {
    "CustomerID"   = "MGMT11"
    "Environment"  = "prod"
    "Name"         = "MGMT11LOGP02"
    "map-migrated" = "d-server-03vf4jjv87jwou"
  }

}
