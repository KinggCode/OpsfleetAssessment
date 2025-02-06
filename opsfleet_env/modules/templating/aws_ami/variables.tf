# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

# AMI Name
variable "ami_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-ami"
}

# Virtualization Type
variable "virtualization_type" {
  type        = string
  description = "Default Virtualization Type."
  default     = "hvm"
}

# Device Name
variable "device_name" {
  type        = string
  description = "Default Device Name."
  default     = "/dev/xvda"
}

# IMD Support
variable "imd_support" {
  type        = string
  description = "Default Imd Support."
  default     = "v2.0"
}

# Snapshot ID
variable "snapshot_id" {
  type        = string
  description = "Default Snapshot Id."
  default     = "v2.0"
}

# Volume
variable "volume" {
  type        = number
  description = "Default Volume."
  default     = 8
}