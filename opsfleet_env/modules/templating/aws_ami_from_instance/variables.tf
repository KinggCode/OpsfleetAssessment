# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

# AMI Name
variable "ami_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-ami"
}

# Device Name
variable "source_instance_id" {
  type        = string
  description = "Default Source Instance ID."
  default     = "i-xxxxxxxx"
}

