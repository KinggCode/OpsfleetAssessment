# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "prefix_name" {
  type        = string
  description = "Default EC2 Managed Prefix List."
  default = "All VPC CIDR-s"
}

variable "address_family" {
  type        = string
  description = "Default Address Family"
  default = "Pv4"
}

variable "max_entries" {
  type        = number
  description = "Default Address Family"
  default = 5
}

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