variable "health_check_type" {
  type        = string
  description = "Default Route53 Health Check Type"
  default     = "CLOUDWATCH_METRIC"
}

variable "cloudwatch_alarm_name" {
  type        = string
  description = "Default Cloudwatch Alarm Name"
  default     = "office"
}

variable "cloudwatch_alarm_region" {
  type        = string
  description = "Default Cloudwatch Alarm Region"
  default     = "us-west-2"
}

variable "insufficient_data_health_status" {
  type        = string
  description = "Default Insufficient Data Health Status"
  default     = "Healthy"
}




# General Variables #
########################################################################
variable "env" {
  type        = string
  description = "Default Environment"
  default = "dev"
}

variable "company" {
  type        = string
  description = "Default Company"
  default = "opsfleet"
}