variable "map_migrated" {
  description = "The value required for the AWS Migration Acceleration Program (MAP) tag"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID for Shared Services VPC"
  type        = string
  default     = "vpc-045a204545436e8d2"
}

variable "ohio_vpc_id" {
  description = "The VPC ID for Shared Services Ohio VPC"
  type        = string
  default     = "vpc-05060746f5357cb3f"
}

variable "ohio_region" {
  description = "Region for data sources in Ohio"
  type        = string
  default     = "us-east-2"
}