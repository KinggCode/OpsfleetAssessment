# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "internet_gateway_id" {
  type        = string
  description = "Default Internet Gateway ID."
  default = "default"
}

variable "vpc_id" {
  type        = string
  description = "Default VPC ID"
  default = "vpc"
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