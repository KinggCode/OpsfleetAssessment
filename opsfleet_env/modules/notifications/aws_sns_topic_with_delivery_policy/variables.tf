# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "sns_topic_name" {
  type        = string
  description = "Default SNS Topic Name."
  default = "user-updates-topic.fifo"
}


variable "sns_topic_fifo_topic" {
  type        = bool
  description = "Default SNS Topic FIFO Topic"
  default = true
}

variable "sns_topic_content_based_deduplication" {
  type        = bool
  description = "Default SNS Topic Content Based Deduplication"
  default = true
}

variable "sns_topic_delivery_policy" {
  type        = string
  description = "Default SNS Topic Delivery Policy"
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

