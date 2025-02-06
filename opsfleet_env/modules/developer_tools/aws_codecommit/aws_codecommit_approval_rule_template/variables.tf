# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "rule_template_name" {
  description = "Default Approval Rule Template"
  type        = string
  default     = "MyExampleApprovalRuleTemplate"

}

variable "rule_template_description" {
  description = "Default Approval Rule Template Description"
  type        = string
  default     = "This is an example approval rule template"
}


variable "rule_template_content" {
  description = "Default Approval Rule Template Content"
  type        = string
  default     = "test_codebuild_project"
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