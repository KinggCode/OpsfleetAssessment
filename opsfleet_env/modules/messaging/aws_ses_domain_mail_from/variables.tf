# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "domain" {
  type        = string
  description = "Default SES Domain Name."
  default = "default"
}

variable "mail_from_domain" {
  type        = string
  description = "Default SES Domain Mail From."
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

