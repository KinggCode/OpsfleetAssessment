# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "host_name" {
  description = "Default Connection Name"
  type        = string
  default     = "example-host"

}

variable "provider_endpoint" {
  description = "Default Provider Type"
  type        = string
  default     = "https://example.com"
}

variable "provider_type" {
  description = "Default Provider Type"
  type        = string
  default     = "GitHubEnterpriseServer"
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