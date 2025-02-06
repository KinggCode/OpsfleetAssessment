# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "instance_id" {
  type        = string
  description = "Default Instance ID."
  default = "default"
}

variable "network_interface_id" {
  type        = string
  description = "Default Network Interface  ID."
  default = "default"
}

variable "device_index" {
  type        = number
  description = "Default Device Index."
  default = 0
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