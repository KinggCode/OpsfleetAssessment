# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "ecs_capacity_name" {
  type        = string
  description = "Default ECS Name"
  default = "test"
}

variable "auto_scaling_group_arn" {
  type        = string
  description = "Default ECS Autoscaling Group ARN"
  default = "default"
}

variable "managed_termination_protection" {
  type        = string
  description = "Default ECS Managed Termination Protection"
  default = "ENABLED"
}

variable "maximum_scaling_step_size" {
  type        = number
  description = "Default Maximum Scaling Step Size"
  default = 1000
}

variable "minimum_scaling_step_size" {
  type        = number
  description = "Default Maximum Scaling Step Size"
  default = 1
}

variable "status" {
  type        = string
  description = "Default ECS Status"
  default = "ENABLED"
}

variable "target_capacity" {
  type        = number
  description = "Default Maximum Scaling Step Size"
  default = 10
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