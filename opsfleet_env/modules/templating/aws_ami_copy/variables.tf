# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

# AMI Name
variable "ami_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-ami"
}

# Description
variable "description" {
  type        = string
  description = "Default Description."
  default     = "A copy of ami-xxxxxxxx"
}

# Device Name
variable "source_ami_id" {
  type        = string
  description = "Default Source AMI ID."
  default     = "ami-xxxxxxxx"
}

# IMD Support
variable "source_region" {
  type        = string
  description = "Default AMI Region"
  default     = "us-west-1"
}

# Snapshot ID
variable "environment" {
  type        = string
  description = "Default Snapshot Id."
  default     = "prod"
}
