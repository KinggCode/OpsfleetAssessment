# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "ses_event_destination_name" {
  type        = string
  description = "Default SES Event Destination Name."
  default = "default"
}

variable "configuration_set_name" {
  type        = string
  description = "Default SES Configuration Set Name."
  default = "default"
}

variable "enabled" {
  type        = bool
  description = "Default SES Event Enabled."
  default = true
}

variable "matching_types" {
  type        = list(string)
  description = "Default SES Event Matching Types."
  default = ["bounce", "send"]
}






variable "kinesis_destination_stream_arn" {
  type        = string
  description = "Default SES Event Kinesis Default Value Name."
  default = "default"
}

variable "kinesis_destination_role_arn" {
  type        = string
  description = "Default SES Event Kinesis Dimension Value Name."
  default = "dimension"
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

