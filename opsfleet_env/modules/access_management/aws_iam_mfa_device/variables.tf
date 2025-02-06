# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "mfa_device" {
  type        = string
  description = "Default IAM Group Name ."
  default = "mfa-grp"
}

variable "mfa_path" {
  type        = string
  description = "Default IAM Group Name ."
  default = "mfa-grp"
}

