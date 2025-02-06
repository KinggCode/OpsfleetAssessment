# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "role_name" {
  type        = string
  description = "Default IAM Group Name ."
  default = "opsfleet-grp"
}


variable "assume_role_policy" {
  type        = string
  description = "Default IAM Policy Name ."
  default = "opsfleet-grp"
}


variable "env" {
  type        = string
  description = "Default IAM Policy Description ."
  default = "opsfleet"
}


variable "policy" {
  type        = string
  description = "Default IAM Group ."
  default = ""
}
