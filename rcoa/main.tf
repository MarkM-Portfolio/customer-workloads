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
      from_port   = 5002
      to_port     = 5002
      protocol    = "tcp"
      description = "Custom port access"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  computed_ingress_with_source_security_group_id = [
    {
      source_security_group_id = data.aws_security_group.baseline_data.id
      from_port                = 0
      to_port                  = 0
      protocol                 = "-1"
      description              = "Open inbound from Data Subnet SG"
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1

}
