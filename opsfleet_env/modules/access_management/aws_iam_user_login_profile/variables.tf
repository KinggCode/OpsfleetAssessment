# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "user_name" {
  type        = string
  description = "Default IAM User ."
  default = "opsfleet-grp"
}


variable "password_len" {
  type        = number
  description = "Default IAM User ."
  default = 20
}


variable "password_reset" {
  type        = bool
  description = "Default IAM User ."
  default = true
}