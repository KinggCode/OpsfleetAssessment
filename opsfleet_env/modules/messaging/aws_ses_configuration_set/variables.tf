# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "configuration_name" {
  type        = string
  description = "Default SES Rule Set Name."
  default = "some-configuration-set-test"
}



variable "tls_policy" {
  type        = string
  description = "Default SES TLS Policy."
  default = "Require"
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

