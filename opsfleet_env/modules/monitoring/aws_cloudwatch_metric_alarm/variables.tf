variable "alarm_name" {
  type        = string
  description = "Default Alarm Name "
  default     = "oterraform-test-foobar5"
}

variable "comparison_operator" {
  type        = string
  description = "Default VPC Name "
  default     =  "GreaterThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  type        = number
  description = "Default VPC Name "
  default     = 2
}

variable "metric_name" {
  type        = string
  description = "Default Metric Name "
  default     = "CPUUtilization"
}

variable "namespace" {
  type        = string
  description = "Default Namespace "
  default     = "AWS/EC2"
}

variable "period" {
  type        = number
  description = "Default VPC Name "
  default     = 120
}

variable "instance_id" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
}




variable "statistic" {
  type        = string
  description = "Default Statistic "
  default     = "Average"
}


variable "threshold" {
  type        = number
  description = "Default Threshold "
  default     = 80
}

variable "alarm_description" {
  type        = string
  description = "Default Alarm Description "
  default     = "This metric monitors ec2 cpu utilization"
}

variable "insufficient_data_actions" {
  type        = list(string)
  description = "Default Alarm Insufficient Data Actions"
  default     = []
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