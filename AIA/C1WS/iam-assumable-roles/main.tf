provider "aws" {
  region = "eu-west-1"
}

######################
# IAM assumable roles
######################
/* module "iam_assumable_roles" {
  source = "../../modules/iam-assumable-roles"

  trusted_role_arns = [
    "arn:aws:iam::307990089504:root",
    "arn:aws:iam::835367859851:user/anton",
  ]

  trusted_role_services = [
    "codedeploy.amazonaws.com"
  ]

  create_admin_role = true

  create_poweruser_role      = true
  poweruser_role_name        = "Billing-And-Support-Access"
  poweruser_role_policy_arns = ["arn:aws:iam::aws:policy/job-function/Billing", "arn:aws:iam::aws:policy/AWSSupportAccess"]

  create_readonly_role       = true
  readonly_role_requires_mfa = false
}

######################################
# IAM assumable roles with self assume
######################################
module "iam_assumable_roles_with_self_assume" {
  source = "../../modules/iam-assumable-roles"

  trusted_role_arns = [
    "arn:aws:iam::307990089504:root",
    "arn:aws:iam::835367859851:user/anton",
  ]

  trusted_role_services = [
    "codedeploy.amazonaws.com"
  ]

  create_admin_role          = true
  allow_self_assume_role     = true
  create_poweruser_role      = true
  admin_role_name            = "Admin-Role-Name-Self-Assume"
  poweruser_role_name        = "Billing-And-Support-Access-Self-Assume"
  poweruser_role_policy_arns = ["arn:aws:iam::aws:policy/job-function/Billing", "arn:aws:iam::aws:policy/AWSSupportAccess"]
  readonly_role_name         = "Read-Only-Role-Name-Self-Assume"

  create_readonly_role       = true
  readonly_role_requires_mfa = false
}
 */
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
    "arn:aws:iam::171328581101:policy/Workload_Security_Policy_Cross20240529121524107500000001"
     #module.C1WS_WorkloadSecurity_Policy.arn
  ]
  #  number_of_custom_role_policy_arns = 1
}