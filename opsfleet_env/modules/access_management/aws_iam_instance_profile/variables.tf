# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "instance_profile_name" {
  type        = string
  description = "Default Instance Profile."
  default = "mfa-grp"
}

variable "role_name" {
  type        = string
  description = "Default Role Name ."
  default = "mfa-grp"
}

