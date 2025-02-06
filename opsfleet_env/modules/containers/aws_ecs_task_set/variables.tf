# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "cluster_name" {
  type        = string
  description = "Default ECS Cluster Name"
  default = "example"
}

variable "key_id" {
  type        = string
  description = "Default ECS Cluster KMS Key ARN"
  default = "default"
}

variable "cluster_logging" {
  type        = string
  description = "Default ECS Cluster Name"
  default = "OVERRIDE"
}

variable "cloud_watch_log_group_name" {
  type        = string
  description = "Default ECS Cloudwatch Log Group Name"
  default = "default"
}

variable "cloud_watch_encryption_enabled" {
  type        = bool
  description = "Default ECS Cluster KMS Key ARN"
  default = true
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