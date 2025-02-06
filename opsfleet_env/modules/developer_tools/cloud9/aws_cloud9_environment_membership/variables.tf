# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "environment_id" {
  description = "Default Environment ID"
  type        = string
  default     = "default"

}


variable "permissions" {
  description = "Default Permissions"
  type        = string
  default     = "read-only"
}

# AWS Regions to use in this example
variable "user_arn" {
  type        = string
  description = "Default User ARN."
  default = "default"
}



variable "subnet_id" {
  description = "Default Subnet ID"
  type        = string
  default     = ""
}