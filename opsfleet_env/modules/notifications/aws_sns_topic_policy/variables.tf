# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "sns_topic_arn" {
  type        = string
  description = "Default SNS Topic ARN."
  default = "user-updates-topic.fifo"
}

variable "policy" {
  type        = string
  description = "Default  Policy"
  default = "default"
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

