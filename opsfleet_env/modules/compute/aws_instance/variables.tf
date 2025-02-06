# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

variable "instance_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-instance"
}

# AMI Name
variable "ami_id" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-ami"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Default AMI Name"
  default     = true
}

variable "key_name" {
  type        = string
  description = "Default AMI Name"
  default     = "default"
}


# Device Name
variable "instance_type" {
  type        = string
  description = "Default Instance Type."
  default     = "c6a.2xlarge"
}

variable "subnet_id" {
  type        = string
  description = "Default Subnet ID"
  default     = "default"
}

variable "security_groups" {
  type        = list(string)
  description = "Default Security Group ID"
  default     = ["default"]
}

variable "instance_profile" {
  type        = string
  description = "EC2 instance profile to attach to the EC2 instance(s)"
}

variable "monitoring" {
  type        = bool
  description = "Default AMI Name"
  default     = true
}


###############################################################
variable "core_count" {
  type        = number
  description = "Default Core Count."
  default     = 2
}


variable "threads_per_core" {
  type        = number
  description = "Default Threads per Core."
  default     = 2
}

###############################################################

variable "http_endpoint" {
  type        = string
  description = "Default HTTP Endpoint"
  default     = "enabled"
}

variable "http_tokens" {
  type        = string
  description = "Default HTTP Tokens"
  default     = "required"
}

variable "instance_metadata_tags" {
  type        = string
  description = "Default Metadata Tags"
  default     = "enabled"
}

###############################################################

variable "device_name" {
  type        = string
  description = "Default Boot Disk Device Name"
  default     = "opsfleet-OSdisk"
}

variable "encrypted" {
  type        = bool
  description = "Default Encrypted"
  default     = true
}

variable "delete_on_termination" {
  type        = bool
  description = "Default Delete On Termination"
  default     = true
}