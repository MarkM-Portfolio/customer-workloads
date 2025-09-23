variable "map_migrated" {
  description = "The value required for the AWS Migration Acceleration Program (MAP) tag"
  type        = string
}


variable "london_shared_vpc_cidr" {
  description = "CIDR Block for the london vpc"
  type        = string
  default     = "172.18.4.0/22"
}

variable "ohio_shared_vpc_cidr" {
  description = "CIDR Block for the ohio vpc"
  type        = string
  default     = "172.18.0.0/22"
}