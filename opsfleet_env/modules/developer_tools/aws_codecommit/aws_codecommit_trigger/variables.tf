# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "repository_name" {
  type        = string
  description = "Default Repository Name"
  default = "MyTestRepository"
}

variable "trigger_name" {
  type        = string
  description = "Default Trigger Name"
  default = "all"
}

variable "trigger_events" {
  type        = list(string)
  description = "Default Repository Description"
  default = ["all"]
}

variable "trigger_destination_arn" {
  type        = string
  description = "Default Trigger Description"
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