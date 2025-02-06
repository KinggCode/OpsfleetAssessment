# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "git_webhook_active" {
  type        = bool
  description = "Default GIT Webhook Active"
  default =true
}

variable "git_webhook_events" {
  type        = string
  description = "Default GIT Webhook"
  default = ["push"]
}

variable "git_webhook_name" {
  type        = string
  description = "Default GIT Webhook"
  default = "default"
}

variable "git_webhook_repository_name" {
  type        = string
  description = "Default GIT Webhook"
  default = "default"
}



# Codebuild Webhook #
########################################################################

variable "configuration_url" {
  type        = string
  description = "Default GIT Webhook Configuration URL"
  default = "EVENT"
}


variable "configuration_secret" {
  type        = string
  description = "Default GIT Webhook Configuration URL"
  default = "EVENT"
}



variable "configuration_content_type" {
  type        = string
  description = "Default GIT Webhook Configuration URL"
  default = "json"
}


variable "configuration_insecure_ssl" {
  type        = bool
  description = "Default GIT Webhook Configuration URL"
  default = false
}


# General Variables #
########################################################################
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