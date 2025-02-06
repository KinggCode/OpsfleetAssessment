# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "grant_name" {
  type        = string
  description = "Default KMS Key Grant Name"
  default = "my-grant"
}

variable "key_id" {
  type        = string
  description = "Default KMS Key ID"
  default = "key"
}

variable "role_arn" {
  type        = string
  description = "Default KMS Key Role ARN"
  default = "my-grant"
}

variable "operations" {
  type        = list(string)
  description = "Default KMS Key Operations"
  default =  ["Encrypt", "Decrypt", "GenerateDataKey"]
}

variable "department" {
  type        = string
  description = "Default KMS Key Department"
  default = "Finance"
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

