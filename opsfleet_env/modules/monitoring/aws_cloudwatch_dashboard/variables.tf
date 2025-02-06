# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "dashboard_name" {
  type        = string
  description = "Default Dashboard Name"
  default = "opsfleetinc-dashboard"
}

variable "dashboard_body" {
  type        = string
  description = "Default Dashboard Name"
  default = "opsfleetinc-body"
}
