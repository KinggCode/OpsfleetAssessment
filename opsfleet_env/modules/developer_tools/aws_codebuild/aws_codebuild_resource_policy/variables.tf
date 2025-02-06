# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "report_group_arn" {
  type        = string
  description = "Default Resource Group Name"
  default = "default"
}

variable "policy" {
  type        = string
  description = "Default Resource Policy "
  default = "BUILD"
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