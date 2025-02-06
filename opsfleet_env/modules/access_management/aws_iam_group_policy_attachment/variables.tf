# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "group_name" {
  type        = string
  description = "Default IAM Group ."
  default = "opsfleet-grp"
}


variable "policy_arn" {
  type        = string
  description = "Default IAM Group ."
  default = "opsfleet-grp"
}
