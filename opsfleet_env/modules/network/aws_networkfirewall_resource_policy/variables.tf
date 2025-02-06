# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "firewall_policy_arn" {
  type        = string
  description = "Default Network Firewall ARN."
  default = "default"
}

variable "policy" {
  type        = string
  description = "Default Policy"
  default = "default"
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