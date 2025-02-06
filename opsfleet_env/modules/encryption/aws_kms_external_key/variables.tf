# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "description" {
  type        = string
  description = "Default KMS Key Title"
  default = "Multi-Region primary key"
}

variable "deletion_days" {
  type        = number
  description = "Default KMS Deletion Window In Days"
  default = 30
}

variable "multi_region" {
  type        = bool
  description = "Default KMS Multi Region Status"
  default = true
}


variable "enabled" {
  type        = bool
  description = "Default KMS Enabled Status"
  default = true
}


variable "key_material" {
  type        = string
  description = "Default KMS Key Material"
  default = "default"
}


##############################################################

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

