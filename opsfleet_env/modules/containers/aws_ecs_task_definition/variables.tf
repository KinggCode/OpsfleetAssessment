# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "family" {
  type        = string
  description = "Default ECS Task Definition Family"
  default = "service"
}

variable "container_definitions" {
  type        = string
  description = "Default ECS Task Definition Container Definition (JSON)"
  default = "default"
}

variable "volume_name" {
  type        = string
  description = "Default ECS Cluster Name"
  default = "service-storage"
}

variable "volume_host_path" {
  type        = string
  description = "Default ECS Cluster Host Path"
  default = "/ecs/service-storage"
}


variable "placement_type" {
  type        = string
  description = "Default ECS Task Definition Placement Type"
  default = "memberOf"
}

variable "placement_expression" {
  type        = string
  description = "Default ECS Task Definition Placement Expression"
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