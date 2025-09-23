variable "cw_period" {
  description = "The period for Cloudwatch Metrics collection"
  type        = number
}

variable "region"{
  description = "The region that the dashboard is set in"
  type = string
}

variable "view" {
    description = "The display of the widget"
    type = string
    default = "timeSeries"
}

variable "dashboard_name" {
    description = "The name for the dashboard"
    type = string
    default = ""
}