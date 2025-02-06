# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "load_balancer_arn" {
  type        = string
  description = "Default Load Balancer ARN"
  default = "test-lb-tf"
}

variable "port" {
  type        = number
  description = "Default Port."
  default = 80
}

variable "protocol" {
  type        = string
  description = "Default Load Balancer Protocol"
  default = "HTTP"
}

variable "action_type" {
  type        = string
  description = "Default Load Balancer Protocol"
  default = "redirect"
}



variable "redirect_port" {
  type        = string
  description = "Default Load Balancer Port"
  default = "443"
}

variable "redirect_protocol" {
  type        = string
  description = "Default Load Balancer Protocol"
  default = "HTTPS"
}


variable "redirect_status_code" {
  type        = string
  description = "Default Load Balancer Status Code"
  default = "HTTP_301"
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