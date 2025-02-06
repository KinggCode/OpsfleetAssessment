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

variable "networkfirewall_rule_group_description" {
  type        = string
  description = "Default Network Firewall Rule Group ARN."
  default = "Permits http traffic from source"
}


variable "rule_type" {
  type        = string
  description = "Default Network Firewall Rule Type."
  default = "STATEFUL"
}



variable "destination" {
  type        = string
  description = "Default Destination"
  default = "ANY"
}


variable "destination_port" {
  type        = string
  description = "Default Destination Port."
  default = "ANY"
}

variable "protocol" {
  type        = string
  description = "Default Destination"
  default = "HTTP"
}


variable "direction" {
  type        = string
  description = "Default Direction."
  default = "ANY"
}


variable "source_port" {
  type        = string
  description = "Default DestiSource Portnation"
  default = "ANY"
}

variable "action" {
  type        = string
  description = "Default Destination"
  default = "PASS"
}


variable "source_ip" {
  type        = string
  description = "Default Destination"
  default = "1.0.0.1/32"
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