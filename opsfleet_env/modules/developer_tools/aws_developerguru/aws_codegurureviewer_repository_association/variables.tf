# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "repository_name" {
  description = "Default Repository Name"
  type        = string
  default     = "example-connection"

}

variable "encryption_option" {
  description = "Default Provider Type"
  type        = string
  default     = "CUSTOMER_MANAGED_CMK"
}

variable "key_id" {
  description = "Default Key ID"
  type        = string
  default     = "default"
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