# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "ssm_name" {
  type        = string
  description = "Default SSM Name."
  default = "test_ssm_activation"
}

variable "ssm_description" {
  type        = string
  description = "Default SSM Description"
  default = "Test"
}

variable "iam_role_id" {
  type        = string
  description = "Default IAM Role ID"
  default = "Test"
}

variable "registration_limit" {
  type        = number
  description = "Default SSM Description"
  default = 5
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