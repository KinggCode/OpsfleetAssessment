# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "private_ip" {
  type        = string
  description = "Default Private IP."
  default = "default"
}

variable "eip_name" {
  type        = string
  description = "Default Private IP."
  default = "default"
}

variable "domain" {
  type        = string
  description = "Default Domain"
  default = "vpc"
}

variable "network_interface_id" {
  type        = string
  description = "Default Network Interface ID"
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