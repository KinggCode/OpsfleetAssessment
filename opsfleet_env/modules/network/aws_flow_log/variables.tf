# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "instance_id" {
  type        = string
  description = "Default Cloud9 Instance ID."
  default = "default"
}

variable "cloudwatch_log_group" {
  type        = string
  description = "Default Log Destination"
  default = "default"
}

variable "traffic_type" {
  type        = string
  description = "Default Domain"
  default = "ALL"
}

variable "vpc_id" {
  type        = string
  description = "Default VPC ID"
  default = "default"
}

variable "role_arn" {
  type        = string
  description = "Default Role ARN "
  default = "default"
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