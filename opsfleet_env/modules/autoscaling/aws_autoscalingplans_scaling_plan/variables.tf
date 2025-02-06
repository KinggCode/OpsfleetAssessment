# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "autoscaling_scaling_plan_name" {
  type        = string
  description = "Default Autoscaling Plans Scaling Plan Name"
  default = "example-dynamic-cost-optimization"
}

variable "tag_key" {
  type        = string
  description = "Default Application Source Tag Filter"
  default = "application"
}

variable "tag_value" {
  type        = list(string)
  description = "Default Application Source Tag Filter"
  default =  ["example"]
}

variable "max_capacity" {
  type        = number
  description = "Default Max Capacity"
  default = 3
}

variable "min_capacity" {
  type        = number
  description = "Default Max Capacity"
  default = 0
}


variable "resource_id" {
  type        = string
  description = "Default Autoscaling Group Name"
  default = "default"
}

variable "scalable_dimension" {
  type        = string
  description = "Default Autoscaling Plans Scaling Plan Name"
  default = "autoscaling:autoScalingGroup:DesiredCapacity"
}

variable "service_namespace" {
  type        = string
  description = "Default Application Source Tag Filter"
  default = "autoscaling"
}

variable "metric_type" {
  type        = string
  description = "Default Metric Type"
  default = "ASGAverageCPUUtilization"
}

variable "target_value" {
  type        = number
  description = "Default Max Capacity"
  default = 70
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