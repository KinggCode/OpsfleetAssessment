# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "prefix_id" {
  type        = string
  description = "Default EC2 Managed Prefix List."
  default = "default"
}

variable "description" {
  type        = string
  description = "Default Address Family"
  default = "Primary"
}

variable "vpc_cidr" {
  type        = string
  description = "Default Address Family"
  default = "10.0.0.0/4"
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