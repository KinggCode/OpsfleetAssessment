# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

# AMI Name
variable "template_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-template"
}

# Device Name
variable "image_id" {
  type        = string
  description = "Default Source Instance ID."
  default     = "i-xxxxxxxx"
}

variable "instance_type" {
  type        = string
  description = "Default Source Instance Type."
  default     = "t2.medium"
}


variable "volume_size" {
  type        = number
  description = "Default Source Instance Type."
  default     = 40
}


variable "enable_public_ip" {
  type        = string
  description = "Default Associate Public IP Address."
  default     = true
}

variable "enable_monitoring" {
  type        = string
  description = "Default Monitoring"
  default     = true
}

variable "security_groups" {
  type        = list(string)
  description = "Default Source Instance Type."
  default     = ["default"]
}