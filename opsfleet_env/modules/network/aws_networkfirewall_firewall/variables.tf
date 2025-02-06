# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "firewall_name" {
  type        = string
  description = "Default VPC ID."
  default = "default"
}

variable "firewall_policy_arn" {
  type        = string
  description = "Default Subnet  ID."
  default = "default"
}


variable "vpc_id" {
  type        = string
  description = "Default VPC ID."
  default = "default"
}

variable "subnet_id" {
  type        = string
  description = "Default Subnet  ID."
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