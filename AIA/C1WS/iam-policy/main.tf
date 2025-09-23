provider "aws" {
  region = "eu-west-1"
}

/* data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid       = "AllowFullS3Access"
    actions   = ["s3:ListAllMyBuckets"]
    resources = ["*"]
  }
}

#########################################
# IAM policy
#########################################
module "iam_policy" {
  source = "../../modules/iam-policy"

  name_prefix = "example-"
  path        = "/"
  description = "My example policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

  tags = {
    PolicyDescription = "Policy created using heredoc policy"
  }
}

module "iam_policy_from_data_source" {
  source = "../../modules/iam-policy"

  name        = "example_from_data_source"
  path        = "/"
  description = "My example policy"

  policy = data.aws_iam_policy_document.bucket_policy.json

  tags = {
    PolicyDescription = "Policy created using example from data source"
  }
}

module "iam_policy_optional" {
  source = "../../modules/iam-policy"

  create_policy = false
}
 */
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
