# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "placement_name" {
  type        = string
  description = "Default Placement Group Name"
  default = "test"
}


variable "placement_strategy" {
  type        = string
  description = "Default Placement Group Strategy"
  default = "cluster"
}




###########################################################################
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