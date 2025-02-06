# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "stack_name" {
  type        = string
  description = "Default Stack name"
  default = "networking-stack"
}


variable "policy_json" {
  type        = string
  description = "Default Policy Json"
  default = "All VPC CIDR-s"
}

variable "vpc_cidr" {
  type        = string
  description = "Default VPC Cidr"
  default = "10.0.0.0/16"
}


#####################################################################
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