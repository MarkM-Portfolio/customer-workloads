# SSM Parameter DataSources
data "aws_ssm_parameter" "region" {
  provider = aws.ssm
  name     = "/aft/account-request/custom-fields/region"
}

data "aws_ssm_parameter" "customer" {
  provider = aws.ssm
  name     = "/aft/account-request/custom-fields/customer"
}

data "aws_ssm_parameter" "environment" {
  provider = aws.ssm
  name     = "/aft/account-request/custom-fields/environment"
}

# VPC Data Source
data "aws_vpc" "this" {
  filter {
    name   = "tag:Name"
    values = ["vpc-${local.region}-${local.environment}"]
  }
}

# Subnet Data Sources
data "aws_subnet" "app_a" {
  vpc_id            = data.aws_vpc.this.id
  availability_zone = "${local.region}a"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "app_b" {
  vpc_id            = data.aws_vpc.this.id
  availability_zone = "${local.region}b"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "data_a" {
  vpc_id            = data.aws_vpc.this.id
  availability_zone = "${local.region}a"
  filter {
    name   = "tag:Name"
    values = ["*-data-*"]
  }
}

data "aws_subnet" "data_b" {
  vpc_id            = data.aws_vpc.this.id
  availability_zone = "${local.region}b"
  filter {
    name   = "tag:Name"
    values = ["*-data-*"]
  }
}

# Security Group Data Sources
data "aws_security_group" "baseline_app" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-application-*"]
  }
}

data "aws_security_group" "migration" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-migration-*"]
  }
}

data "aws_security_group" "cutover_test" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-cutover-test-*"]
  }
}

data "aws_security_group" "baseline_data" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-data-*"]
  }
}
