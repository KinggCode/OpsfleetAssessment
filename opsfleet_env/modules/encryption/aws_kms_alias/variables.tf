# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "alias_name" {
  type        = string
  description = "Default KMS Key ALias Name"
  default = "alias/my-key-alias"
}

variable "key_id" {
  type        = string
  description = "Default KMS Key ID"
  default = "default"
}


variable "policy" {
  type        = string
  description = "Default KMS Key Policy"
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

