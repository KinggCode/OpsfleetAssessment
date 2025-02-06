# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "policy_name" {
  type        = string
  description = "Default Autoscaling Policy Name."
  default = "foobar3-terraform-test"
}

variable "scaling_adjustment" {
  type        = number
  description = "Default Scaling Adjustment."
  default = 4
}

variable "adjustment_type" {
  type        = string
  description = "Default Adjustment Type."
  default = "ChangeInCapacity"
}

variable "cooldown" {
  type        = number
  description = "Default Scaling Adjustment."
  default = 300
}

variable "autoscaling_group_name" {
  type        = string
  description = "Default Autoscaling Group Name."
  default = "default"
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