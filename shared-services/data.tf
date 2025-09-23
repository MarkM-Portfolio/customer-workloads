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

data "aws_ssm_parameter" "fsx_username" {
  provider = aws.ssm
  name     = "/prod/fsx/dc/username"
}

data "aws_ssm_parameter" "fsx_password" {
  provider = aws.ssm
  name     = "/prod/fsx/dc/password"
}
# VPC Data Source

data "aws_vpc" "this" {
  id = var.vpc_id
}

data "aws_vpc" "sapphire_beyond" {
  filter {
    name   = "tag:Name"
    values = ["vpc-sapphire-beyond-${local.region}-${local.environment}"]
  }
}

data "aws_vpc" "ohio" {
  provider = aws.ohio
  id       = var.ohio_vpc_id
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

# Ohio Subnet Data Sources

data "aws_subnet" "ohio_app_a" {
  provider          = aws.ohio
  vpc_id            = data.aws_vpc.ohio.id
  availability_zone = "${var.ohio_region}a"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "ohio_app_b" {
  provider          = aws.ohio
  vpc_id            = data.aws_vpc.ohio.id
  availability_zone = "${var.ohio_region}b"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "ohio_data_a" {
  provider          = aws.ohio
  vpc_id            = data.aws_vpc.ohio.id
  availability_zone = "${var.ohio_region}a"
  filter {
    name   = "tag:Name"
    values = ["*-data-*"]
  }
}

data "aws_subnet" "ohio_data_b" {
  provider          = aws.ohio
  vpc_id            = data.aws_vpc.ohio.id
  availability_zone = "${var.ohio_region}b"
  filter {
    name   = "tag:Name"
    values = ["*-data-*"]
  }
}

# Sapphire beyond subnet data sources

data "aws_subnet" "sb_app_a" {
  vpc_id            = data.aws_vpc.sapphire_beyond.id
  availability_zone = "${local.region}a"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "sb_app_b" {
  vpc_id            = data.aws_vpc.sapphire_beyond.id
  availability_zone = "${local.region}b"
  filter {
    name   = "tag:Name"
    values = ["*-app*"]
  }
}

data "aws_subnet" "sb_data_a" {
  vpc_id            = data.aws_vpc.sapphire_beyond.id
  availability_zone = "${local.region}a"
  filter {
    name   = "tag:Name"
    values = ["*-data-*"]
  }
}

data "aws_subnet" "sb_data_b" {
  vpc_id            = data.aws_vpc.sapphire_beyond.id
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

data "aws_security_group" "custom_app" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-custom-application-*"]
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

data "aws_security_group" "rds_broker" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-rds-broker-*"]
  }
}

data "aws_security_group" "shared_service" {
  vpc_id = data.aws_vpc.this.id
  filter {
    name   = "tag:Name"
    values = ["*-shared-service-*"]
  }
}

# Sapphire beyond Security Group Data Sources

data "aws_security_group" "sb_baseline_app" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-application-*"]
  }
}

data "aws_security_group" "sb_custom_app" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-custom-application-*"]
  }
}

data "aws_security_group" "sb_migration" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-migration-*"]
  }
}

data "aws_security_group" "sb_cutover_test" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-cutover-test-*"]
  }
}

data "aws_security_group" "sb_baseline_data" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-data-*"]
  }
}

data "aws_security_group" "sb_rds_broker" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-rds-broker-*"]
  }
}

data "aws_security_group" "sb_shared_service" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-shared-service-*"]
  }
}

data "aws_security_group" "sb_resolver" {
  vpc_id = data.aws_vpc.sapphire_beyond.id
  filter {
    name   = "tag:Name"
    values = ["*-resolver-*"]
  }
}

# Ohio Security Group Data Sources

data "aws_security_group" "ohio_baseline_app" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-application-*"]
  }
}

data "aws_security_group" "ohio_custom_app" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-custom-application-*"]
  }
}

data "aws_security_group" "ohio_migration" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-migration-*"]
  }
}

data "aws_security_group" "ohio_cutover_test" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-cutover-test-*"]
  }
}

data "aws_security_group" "ohio_baseline_data" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-baseline-data-*"]
  }
}

data "aws_security_group" "ohio_rds_broker" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-rds-broker-*"]
  }
}

data "aws_security_group" "ohio_shared_service" {
  provider = aws.ohio
  vpc_id   = data.aws_vpc.ohio.id
  filter {
    name   = "tag:Name"
    values = ["*-shared-service-*"]
  }
}