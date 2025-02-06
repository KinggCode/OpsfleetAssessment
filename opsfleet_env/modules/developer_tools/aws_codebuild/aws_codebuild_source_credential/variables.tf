# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "auth_type" {
  type        = string
  description = "Default Auth Type"
  default = "PERSONAL_ACCESS_TOKEN"
}

variable "server_type" {
  type        = string
  description = "Default Server Type "
  default = "GITHUB"
}

variable "token" {
  type        = string
  description = "Default Token "
  default = "example"
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