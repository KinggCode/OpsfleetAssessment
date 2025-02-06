# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "policy_name" {
  type        = string
  description = "Default VPC ID."
  default = "default"
}

variable "firewall_policy_arn" {
  type        = string
  description = "Default Subnet  ID."
  default = "aws:pass"
}


variable "stateless_default_actions" {
  type        = string
  description = "Default Stateless Default Actions."
  default = "aws:pass"
}

variable "stateless_fragment_default_actions" {
  type        = string
  description = "Default Stateless Fragment Deault Actions."
  default = "aws:drop"
}
variable "network_rule_group_priority" {
  type        = number
  description = "Default Network Firewall Rule Group Priority."
  default = 1
}


variable "network_rule_group_arn" {
  type        = string
  description = "Default Network Firewall Rule Group ARN."
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