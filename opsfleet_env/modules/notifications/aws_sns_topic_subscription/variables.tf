# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "sns_topic_arn" {
  type        = string
  description = "Default SNS Topic ARN."
  default = "arn:aws:sns:us-west-2:432981146916:user-updates-topic"
}

variable "sns_protocol" {
  type        = string
  description = "Default  SNS Protocol"
  default = "sqs"
}

variable "sns_endpoint" {
  type        = string
  description = "Default  SNS Endpoint"
  default = "arn:aws:sqs:us-west-2:432981146916:terraform-queue-too"
}


##############################################################

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

