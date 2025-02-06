# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "approval_rule_template_name" {
  description = "Default Approval Rule Template"
  type        = string
  default     = "MyExampleApprovalRuleTemplate"

}

variable "repository_name" {
  description = "Default Approval Rule Template Repository Name"
  type        = string
  default     = "This is an example approval rule template"
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