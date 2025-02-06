# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "connection_name" {
  description = "Default Connection Name"
  type        = string
  default     = "example-connection"

}

variable "connection_provider" {
  description = "Default Provider Type"
  type        = string
  default     = "GitHub"
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