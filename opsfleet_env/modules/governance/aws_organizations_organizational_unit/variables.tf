# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "organizational_unit_name" {
  type        = string
  description = "Default Organizational Unit Name"
  default = "my_new_account"
}

variable "parent_id" {
  type        = string
  description = "Default Parent Organizational Unit"
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