# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "project_name" {
  type        = string
  description = "Default Report Group Name"
  default = "default"
}

variable "build_type" {
  type        = string
  description = "Default Codebuild Webhook"
  default = "BUILD"
}


# Codebuild Webhook #
########################################################################

variable "type_1" {
  type        = string
  description = "Default Report Group Type 1"
  default = "EVENT"
}

variable "pattern_1" {
  type        = string
  description = "Default Codebuild Webhook Pattern 1"
  default = "PUSH"
}

variable "type_2" {
  type        = string
  description = "Default Report Group Type 2"
  default = "BASE_REF"
}

variable "pattern_2" {
  type        = string
  description = "Default Codebuild Webhook Pattern 2"
  default = "master"
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