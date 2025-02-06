# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "firewall_arn" {
  type        = string
  description = "Default Network Firewall ARN."
  default = "default"
}

variable "bucket_name" {
  type        = string
  description = "Default Bucket Name."
  default = "default"
}

variable "prefix" {
  type        = string
  description = "Default Prefix."
  default = "default"
}


variable "log_destination_type" {
  type        = string
  description = "Default Log Destination Type."
  default = "S3"
}

variable "log_type" {
  type        = string
  description = "Default Log Type."
  default = "FLOW"
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