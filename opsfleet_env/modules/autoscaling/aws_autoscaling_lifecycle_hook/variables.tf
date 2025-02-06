# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "aws_autoscaling_lifecycle_hook_name" {
  type        = string
  description = "Default Autoscaling Lifecycle Hook Name."
  default = "foobar"
}

variable "autoscaling_group_name" {
  type        = string
  description = "Default Autoscaling Group Name."
  default = "default"
}

variable "default_result" {
  type        = string
  description = "Default Result."
  default = "CONTINUE"
}

variable "heartbeat_timeout" {
  type        = number
  description = "Default Heartbeat Timeout."
  default = 2000
}

variable "lifecycle_transition" {
  type        = string
  description = "Default Lifecycle Transition."
  default = "autoscaling:EC2_INSTANCE_LAUNCHING"
}

variable "notification_metadata" {
  type        = string
  description = "Default Notification Metadata Name."
  default = "default"
}

variable "notification_target_arn" {
  type        = string
  description = "Default Notification Target ARN."
  default = "arn:aws:sqs:us-east-1:444455556666:queue1*"
}

variable "role_arn" {
  type        = string
  description = "Default Notification Target ARN."
  default = "arn:aws:iam::123456789012:role/S3Access"
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