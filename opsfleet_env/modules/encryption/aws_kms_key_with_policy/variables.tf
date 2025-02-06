# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "member_account_name" {
  type        = string
  description = "Default KMS Key Title"
  default = "my test kms key"
}

variable "deletion_days" {
  type        = number
  description = "Default KMS Deletion Window In Days"
  default = 7
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

