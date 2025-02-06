# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "firewall_arn" {
  type        = string
  description = "Default Network Firewall ARN."
  default = "default"
}

variable "log_group_name" {
  type        = string
  description = "Default Log Group Name."
  default = "aws:pass"
}


variable "log_destination_type" {
  type        = string
  description = "Default Log Destination Type."
  default = "CloudWatchLogs"
}

variable "log_type" {
  type        = string
  description = "Default Log Type."
  default = "ALERT"
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