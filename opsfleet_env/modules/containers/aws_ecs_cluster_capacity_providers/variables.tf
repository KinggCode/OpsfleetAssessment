# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "cluster_name" {
  type        = string
  description = "Default ECS Cluster Name"
  default = "example"
}

variable "capacity_providers" {
  type        = list(string)
  description = "Default ECS Cluster Capacity Providers"
  default = ["FARGATE"]
}

variable "capacity_provider_base" {
  type        = number
  description = "Default ECS Cluster Base"
  default = 1
}

variable "capacity_provider_weight" {
  type        = number
  description = "Default ECS Cluster Weight"
  default = 100
}
variable "capacity_provider" {
  type        = string
  description = "Default ECS Cluster Capacity Provider"
  default = "FARGATE"
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