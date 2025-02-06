# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "vpc_id" {
  type        = string
  description = "Default VPC ID"
  default = "vpc"
}

variable "egress_protocol" {
  type        = string
  description = "Default Egress Protocol TCP."
  default = "tcp"
}

variable "egress_rule_no" {
  type        = number
  description = "Default Egress Rule No ID."
  default = 200
}

variable "egress_action" {
  type        = string
  description = "Default Egress Action TCP."
  default = "allow"
}

variable "egress_cidr_block" {
  type        = string
  description = "Default Egress CIDR Block."
  default = "10.3.0.0/18"
}

variable "egress_from_port" {
  type        = number
  description = "Default Egress From Port."
  default = 443
}

variable "egress_to_port" {
  type        = number
  description = "Default Egress To Port."
  default = 443
}




variable "ingress_protocol" {
  type        = string
  description = "Default Ingress Protocol TCP."
  default = "tcp"
}

variable "ingress_rule_no" {
  type        = number
  description = "Default Ingress Rule No ID."
  default = 100
}

variable "ingress_action" {
  type        = string
  description = "Default Ingress Action TCP."
  default = "allow"
}

variable "ingress_cidr_block" {
  type        = string
  description = "Default Ingress CIDR Block."
  default = "10.3.0.0/18"
}

variable "ingress_from_port" {
  type        = number
  description = "Default Ingress From Port."
  default = 80
}

variable "ingress_to_port" {
  type        = number
  description = "Default Ingress To Port."
  default = 80
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
variable "network_acl_name" {
  type        = string
  description = "Default Network ACL Name"
  default = "opsfleet"
}


variable "subnets" {
  type        = list(string)
  description = "Default Network ACL Name"
  default = []
}