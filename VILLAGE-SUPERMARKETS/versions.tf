terraform {
  required_version = ">= 0.15.5"
  required_providers {
    aws = {
      version = ">=3.72.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    region         = "us-east-2"
    bucket         = "tf-state-932058450284-vlsm"
    key            = "vlsm.tfstate"
    dynamodb_table = "tf-state-lock-vlsm"
    encrypt        = "true"
  }
}

# Primary region where AFT deploys SSM Parameters is always eu-west-2. 
# Use this provider to grab SSM Parameters for data.tf
provider "aws" {
  alias  = "ssm"
  region = "eu-west-2"
  # default_tags {
  #   tags = {
  #   }
  # }
}

# Home region where customer workloads are to be deployed
# provider "aws" {
#   # region = local.region
#   /* default_tags {
#     tags = merge(
#       local.tags
#     )
#   } */
# }
