# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "service_name" {
  type        = string
  description = "Default ECS Service Name"
  default = "mongodb"
}

variable "cluster_id" {
  type        = string
  description = "Default ECS Cluster ID"
  default = "default"
}

variable "task_definition_arn" {
  type        = string
  description = "Default ECS Service Task Definition ARN"
  default = "default"
}

variable "desired_count" {
  type        = number
  description = "Default ECS Service Desired Count"
  default = 3
}

variable "iam_role_arn" {
  type        = string
  description = "Default ECS Service Task Definition ARN"
  default = "default"
}

###########################################################################


variable "placement_type" {
  type        = string
  description = "Default ECS Service Ordered Placement Strategy Type"
  default = "binpack"
}

variable "placement_field" {
  type        = string
  description = "Default ECS Cluster Ordered Placement Strategy Field"
  default = "cpu"
}

###########################################################################
variable "target_group_arn" {
  type        = string
  description = "Default ECS Service Load Balancer Target Group ARN"
  default = "default"
}

variable "container_name" {
  type        = string
  description = "Default ECS Service Load Balancer Container Name"
  default = "default"
}

variable "container_port" {
  type        = number
  description = "Default ECS Service Load Balancer Container Port"
  default = 8080
}

###########################################################################


variable "placement_type" {
  type        = string
  description = "Default ECS Service Placement Type"
  default = "memberOf"
}

variable "placement_expression" {
  type        = string
  description = "Default ECS Service Placement Expression"
  default = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
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