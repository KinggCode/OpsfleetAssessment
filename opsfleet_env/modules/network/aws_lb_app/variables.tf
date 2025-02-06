# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "load_balancer_name" {
  type        = string
  description = "Default Load Balancer Name"
  default = "test-lb-tf"
}

variable "internal" {
  type        = bool
  description = "Default Internal."
  default = false
}


variable "load_balancer_type" {
  type        = string
  description = "Default Load Balancer Name"
  default = "application"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Default Security Group ID."
  default = ["default"]
}

variable "subnet_ids" {
  type        = list(string)
  description = "Default Subnet ID."
  default = ["default"]
}


variable "enable_deletion_protection" {
  type        = bool
  description = "Default Enable Deletion Protection."
  default = true
}





variable "bucket_id" {
  type        = string
  description = "Default Bucket ID."
  default = "allow"
}

variable "prefix" {
  type        = string
  description = "Default Prefix"
  default = "test-lb"
}


variable "logs_enable" {
  type        = bool
  description = "Default Access Logs Enabled."
  default = true
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
variable "network_acl_name" {
  type        = string
  description = "Default Network ACL Name"
  default = "opsfleet"
}