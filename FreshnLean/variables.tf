 variable "map_migrated" {
 description = "The value required for the AWS Migration Acceleration Program (MAP) tag"
  type        = string
}
variable "monitoring" {
  description = "The value that determines whether detailed monitoring is enabled"
  type        = string
  default     = "false"
}