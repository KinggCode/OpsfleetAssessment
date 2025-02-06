# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "ecs_name" {
  type        = string
  description = "Default ECS Name"
  default = "taskLongArnFormat"
}

variable "ecs_value" {
  type        = string
  description = "Default ECS Value"
  default = "enabled"
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