# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "compute_platform" {
  description = "Default Compute Platform"
  type        = string
  default     = "Server"

}

variable "codedeploy_name" {
  description = "Default Code Deploy App Name"
  type        = string
  default     = "test_codedeploy_app"
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