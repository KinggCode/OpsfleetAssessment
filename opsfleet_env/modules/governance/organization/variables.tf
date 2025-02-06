# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "feature_set" {
  type        = string
  description = "Default Feature Set"
  default = "ALL"
}

variable "aws_service_access_principals" {
  type        = list(string)
  description = "Default Organizational Unit ID"
  default = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",]
}


##############################################################

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