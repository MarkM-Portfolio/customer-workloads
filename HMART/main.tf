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