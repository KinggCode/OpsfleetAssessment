# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---


variable "networkfirewall_rule_group_description" {
  type        = string
  description = "Default Network Firewall Rule Group ARN."
  default = "Permits http traffic from source"
}

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
  default = "STATELESS"
}


variable "dimension_value" {
  type        = number
  description = "Default Network Firewall Rule Type."
  default = 2
}

variable "action_name" {
  type        = string
  description = "Default Network Firewall Rule Type."
  default = "ExampleMetricsAction"
}



variable "priority" {
  type        = number
  description = "Default Network Firewall Rule Priority."
  default = 1
}


variable "actions" {
  type        = list
  description = "Default Network Firewall Rule Type."
  default = ["aws:pass", "ExampleMetricsAction"]
}





variable "source_address_definition" {
  type        = string
  description = "Default Address Definition"
  default = "1.2.3.4/32"
}

variable "destination_address_definition" {
  type        = string
  description = "Default Address Definition"
  default = "1.2.3.4/32"
}


variable "source_from_port" {
  type        = number
  description = "Default Source From Port."
  default = 443
}

variable "source_to_port" {
  type        = number
  description = "Default Source To Port."
  default = 443
}


variable "destination_from_port" {
  type        = number
  description = "Default Destination From Port."
  default = 443
}

variable "destination_to_port" {
  type        = number
  description = "Default Destination To Port."
  default = 443
}

variable "protocol" {
  type        = number
  description = "Default Protocol"
  default = 6
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





variable "flags" {
  type        = list
  description = "Default Destination"
  default = ["SYN"]
}


variable "masks" {
  type        = list
  description = "Default Destination"
  default = ["SYN", "ACK"]
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