# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "networkfirewall_rule_group_capacity" {
  type        = number
  description = "Default Network Firewall Rule Group ARN."
  default = 100
}

variable "networkfirewall_rule_group_name" {
  type        = string
  description = "Default Network Firewall Rule Group ARN."
  default = "default"
}

variable "rule_type" {
  type        = string
  description = "Default Network Firewall Rule Type."
  default = "STATEFUL"
}

variable "rules_source_list_rule_type" {
  type        = string
  description = "Default Rule Source List Geenrate Rules Type."
  default = "DENYLIST"
}


variable "rules_source_list_rule_target_type" {
  type        = string
  description = "Default Rule Source List  Target Type."
  default = "HTTP_HOST"
}


variable "rules_source_list_rule_targets" {
  type        = string
  description = "Default Rule Source List  Targets."
  default = "test.example.com"
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