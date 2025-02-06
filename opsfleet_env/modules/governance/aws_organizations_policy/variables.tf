# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "policy_name" {
  type        = string
  description = "Default Organizational Unit Name"
  default = "example"
}

variable "policy_document" {
  type        = string
  description = "Default Policy Document Json"
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