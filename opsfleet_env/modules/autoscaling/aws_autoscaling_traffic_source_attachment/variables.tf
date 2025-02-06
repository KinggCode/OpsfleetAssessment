# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "autoscaling_group_name" {
  type        = string
  description = "Default Autoscaling Group Name."
  default = "default"
}


variable "traffic_identifier" {
  type        = string
  description = "Default Autoscaling Load Balancer Target Group ARN"
  default = "foobar"
}

variable "traffic_type" {
  type        = string
  description = "Default Traffic Source Type."
  default = "elbv2"
}




###########################################################################
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