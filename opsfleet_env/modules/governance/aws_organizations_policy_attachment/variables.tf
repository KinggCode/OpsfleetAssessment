# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "policy_id" {
  type        = string
  description = "Default Policy ID"
  default = "example"
}

variable "organizational_unit_id" {
  type        = string
  description = "Default Organizational Unit ID"
  default = ""
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