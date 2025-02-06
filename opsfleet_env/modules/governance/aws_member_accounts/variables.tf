# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "member_account_name" {
  type        = string
  description = "Default Member Account Name."
  default = "my_new_account"
}

variable "member_account_email" {
  type        = string
  description = "Default Member Account Email"
  default = "john@doe.org"
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

