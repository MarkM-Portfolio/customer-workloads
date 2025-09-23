# An example of how to deploy ec2 instance/s
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

/* module "custom_sg_rules" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  create_sg         = false
  security_group_id = data.aws_security_group.custom_app.id
  ingress_with_cidr_blocks = [
    {
      from_port   = xxxx
      to_port     = xxxx
      protocol    = "tcp"
      description = "Open custom ports"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
} */

module "patching" {
  source              = "git@github.com:SapphireSystems/terraform-aws-ssm-patch-management?ref=v1.0.5"
  schedule_london     = "cron(0 30 23 ? * THU#3 *)"
 
}
##########################################
# IAM WorkloadSecurity policies
##########################################

module "C1WS_WorkloadSecurity_Policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name_prefix = "Workload_Security_Policy_Cross"
  path        = "/"
  description = "Cloud One Workload Security Policy"

  policy = <<C1WS
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "cloudconnector",
            "Action": [
                "ec2:DescribeImages",
                "ec2:DescribeInstances",
                "ec2:DescribeRegions",
                "ec2:DescribeSubnets",
                "ec2:DescribeTags",
                "ec2:DescribeVpcs",
                "ec2:DescribeAvailabilityZones",
                "ec2:DescribeSecurityGroups",
                "workspaces:DescribeWorkspaces",
                "workspaces:DescribeWorkspaceDirectories",
                "workspaces:DescribeWorkspaceBundles",
                "workspaces:DescribeTags",
                "iam:ListAccountAliases",
                "iam:GetRole",
                "iam:GetRolePolicy"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
C1WS
}

##########################################
# IAM assumable role with custom policies
##########################################

module "Workload_Security_Role_Cross" {
  source = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"

  trusted_role_arns = [
    "arn:aws:iam::147995105371:root",
  ]

  
  create_role = true

  role_name_prefix  = "Workload_Security_Role_Cross"
  role_requires_mfa = false

  role_sts_externalid = "B1A4099D-C50C-9E4B-B167-09FEBD1D4FE4"

  custom_role_policy_arns = [
     module.C1WS_WorkloadSecurity_Policy.arn
  ]
  #  number_of_custom_role_policy_arns = 1
}


/* module "dashboard" {
  source = "git@github.com:SapphireSystems/utilities.git//Dashboard/multi-os-dashboard?ref=feat/dashboard"
  #source will change dependant on if multi-os customer or only Windows
  dashboard_name = "monitoring"
  cw_period      = 300
  region         = "eu-west-2"
  view           = "timeSeries"
} */