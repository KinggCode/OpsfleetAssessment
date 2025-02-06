# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "schedule_name" {
  type        = string
  description = "Default Autoscaling Schedule Name."
  default = "foobar"
}

variable "min_size" {
  type        = number
  description = "Default Min Size."
  default = 0
}
variable "max_size" {
  type        = number
  description = "Default Max Size."
  default = 1
}

variable "desired_capacity" {
  type        = number
  description = "Default Desired Capacity."
  default = 0
}

variable "start_time" {
  type        = string
  description = "Default Start Time."
  default = "2016-12-11T18:00:00Z"
}

variable "end_time" {
  type        = string
  description = "Default End Time."
  default = "2016-12-12T06:00:00Z"
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