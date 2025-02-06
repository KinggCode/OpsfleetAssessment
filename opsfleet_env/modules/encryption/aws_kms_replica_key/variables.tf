# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "description" {
  type        = string
  description = "Default KMS Key Title"
  default = "my test kms key"
}

variable "deletion_days" {
  type        = number
  description = "Default KMS Deletion Window In Days"
  default = 7
}


variable "primary_key_arn" {
  type        = string
  description = "Default KMS Key Primary Key ARN"
  default = "default"
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

