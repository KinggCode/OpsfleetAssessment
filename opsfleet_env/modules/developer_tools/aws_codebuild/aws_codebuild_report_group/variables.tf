# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "group_name" {
  type        = string
  description = "Default Report Group Name"
  default = "my test report group"
}

variable "group_type" {
  type        = string
  description = "Default Report Group Type"
  default = "TEST"
}

variable "config_type" {
  type        = string
  description = "Default Report Group Config Type"
  default = "S3"
}

# S3 Destination Variables #
########################################################################

variable "bucket_id" {
  type        = string
  description = "Default Report Group Name"
  default = "default"
}

variable "encryption_disabled" {
  type        = bool
  description = "Default Encryption Disabled"
  default = false
}

variable "packaging" {
  type        = string
  description = "Default Report Group Packaging"
  default = "NONE"
}

variable "path" {
  type        = string
  description = "Default Report Group Path"
  default = "/some"
}

variable "encryption_key" {
  type        = string
  description = "Default Encryption Key "
  default = "/some"
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