# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "instance_type" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "t2.micro"

}


variable "env_name" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "one-plan"
}

# AWS Regions to use in this example
variable "aws_region" {
  type        = string
  description = "Default OpsFleet AWS regions to spin up resources."
  default = "us-east-1"
}



variable "subnet_id" {
  description = "Default Subnet ID"
  type        = string
  default     = ""
}