terraform {
  required_version = ">= 0.15.5"
  required_providers {
    aws = {
      version = ">=3.72.0, < 4.0.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    region         = "eu-west-2"
    bucket         = "tf-state-774050295613-summit-hotel"
    key            = "summit-hotel.tfstate"
    dynamodb_table = "tf-state-lock-summit-hotel"
    encrypt        = "true"
    role_arn       = "arn:aws:iam::774050295613:role/OrganizationAccountAccessRole"
  }
}

# Primary region where AFT deploys SSM Parameters is always eu-west-2. 
# Use this provider to grab SSM Parameters for data.tf
provider "aws" {
  alias  = "ssm"
  region = "eu-west-2"

  assume_role {
    role_arn = "arn:aws:iam::774050295613:role/OrganizationAccountAccessRole"
  }

  default_tags {
    tags = {
    }
  }
}

# Home region where customer workloads are to be deployed
provider "aws" {
  region = local.region

  assume_role {
    role_arn = "arn:aws:iam::774050295613:role/OrganizationAccountAccessRole"
  }

  default_tags {
    tags = merge(
      local.tags
    )
  }
}

provider "aws" {
  alias  = "networking-account"
  region = data.aws_ssm_parameter.region.value
  assume_role {
    role_arn = "arn:aws:iam::435629205066:role/OrganizationAccountAccessRole"
  }
  default_tags {
    tags = merge(
      local.tags
    )
  }
}

