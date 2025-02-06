# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "cluster_arn" {
  type        = string
  description = "Default ECS Cluster ARN"
  default = "example"
}

variable "key" {
  type        = string
  description = "Default ECS Cluster KMS Key ARN"
  default = "Name"
}

variable "value" {
  type        = string
  description = "Default ECS Cluster Name"
  default = "Hello World"
}







###########################################################################
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