module "ec2" {
  source = "github.com/SapphireSystems/terraform-aws-ec2-instance?ref=v1.0.0"

  for_each = local.ec2

  name                   = each.key
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids
  iam_instance_profile   = try(each.value.iam_instance_profile, "")
  tags                   = each.value.tags

  enable_volume_tags = false
  root_block_device  = try(each.value.root_block_device, [])
  ebs_volume         = try(each.value.ebs_volume, {})
}

module "patching" {
  source                         = "github.com/SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.4"
  schedule_london                = "cron(0 30 23 ? * WED#3 *)"
  schedule_london_two            = "cron(0 30 23 ? * WED#3 *)"
}
