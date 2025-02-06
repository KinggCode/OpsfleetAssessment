# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "configuration_name" {
  type        = string
  description = "Default Launch Configuration Name"
  default = "web_config"
}

variable "image_id" {
  type        = string
  description = "Default Image ID"
  default = "default"
}

variable "instance_type" {
  type        = string
  description = "Default Instance Type"
  default =  "t2.micro"
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