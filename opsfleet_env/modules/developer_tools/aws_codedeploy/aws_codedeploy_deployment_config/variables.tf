# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "deployment_config_name" {
  description = "Default Deployment Config Name"
  type        = string
  default     = "test-deployment-config"

}

variable "type" {
  description = "Default Minimum Healthy Hosts Type"
  type        = string
  default     = "HOST_COUNT"
}

variable "value" {
  description = "Default Minimum Healthy Hosts Value"
  type        = number
  default     = 2
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