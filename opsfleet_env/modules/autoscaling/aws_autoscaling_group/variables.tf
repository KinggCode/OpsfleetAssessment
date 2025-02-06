# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "autoscaling_group_name" {
  type        = string
  description = "Default Autoscaling Group Name."
  default = "foobar3-terraform-test"
}

variable "max_size" {
  type        = number
  description = "Default Max Size."
  default = 5
}

variable "min_size" {
  type        = number
  description = "Default Min Size."
  default = 2
}

variable "health_check_grace_period" {
  type        = number
  description = "Default Min Size."
  default = 300
}

variable "health_check_type" {
  type        = string
  description = "Default Health Check Type"
  default = "ELB"
}

variable "desired_capacity" {
  type        = number
  description = "DefaultDesired Capacity."
  default = 4
}

variable "force_delete" {
  type        = bool
  description = "Default Force Delete."
  default = true
}


variable "placement_group_id" {
  type        = string
  description = "Default Placement Group ID"
  default = "default"
}

variable "launch_template" {
  type        = string
  description = "Default Launch Template Name"
  default = "default"
}

variable "vpc_zone_identifier" {
  type        = list(string)
  description = "Default VPC Zone Subnet ID "
  default = ["default"]
}

###########################################################################
# Tag 1 

variable "tag_key_1" {
  type        = string
  description = "Default Tag Key"
  default = "foo"
}

variable "tag_value_1" {
  type        = string
  description = "Default Tag Value"
  default = "bar"
}

variable "tag_propagate_at_launch_1" {
  type        = bool
  description = "Default Tag Propagate At Launch"
  default = true
}


###########################################################################
# Tag 2

variable "tag_key_2" {
  type        = string
  description = "Default Tag Key"
  default = "lorem"
}

variable "tag_value_2" {
  type        = string
  description = "Default Tag Value"
  default = "ipsum"
}

variable "tag_propagate_at_launch_2" {
  type        = bool
  description = "Default Tag Propagate At Launch"
  default = false
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