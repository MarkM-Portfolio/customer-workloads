variable "storage_capacity" {
  type = number
  default = null
}

variable "subnet_ids" {
  type = list(string)
  default = []
}

variable "throughput_capacity" {
  type = number
  default = null
}

variable "deployment_type" {
  type = string
  default = ""
}

variable "preferred_subnet_id" {
    type = string
    default = ""
}

variable "dns_ips" {
  type = list(string)
  default = []
}

variable "domain_name" {
    type = string
    default = ""
}

variable "password" {
  type = string
  default = ""
}

variable "username" {
  type = string
  default = ""
}

variable "customer_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_id" {
  description = "The VPC ID for Shared Services VPC"
  type = string
}