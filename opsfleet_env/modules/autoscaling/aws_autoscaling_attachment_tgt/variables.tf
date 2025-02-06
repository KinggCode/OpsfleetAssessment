# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "autoscaling_group_id" {
  type        = string
  description = "Default Autoscaling Group Name."
  default = "default"
}

variable "lb_target_group_arn" {
  type        = string
  description = "Default Load Balancer Target Group ARN"
  default = "default"
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