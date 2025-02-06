# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "dynamodb_name" {
  description = "Default Dynamodb Name"
  type        = string
  default     = "default-s3-bucket"

}


variable "billing_mode" {
  description = "Default Billing Option"
  type        = string
  default     = "PROVISIONED"

}


variable "read_capacity" {
  description = "Default Billing Option"
  type        = number
  default     = 20

}


variable "write_capacity" {
  description = "Default Billing Option"
  type        = number
  default     = 20

}

variable "env" {
  description = "Default Environment"
  type        = string
  default     = "Dev"

}


# AWS Regions to use in this example
variable "aws_regions" {
  type        = map(string)
  description = "Default OpsFleet AWS regions to spin up resources."
  default = {
    north_virginia   = "us-east-1"
    ohio             = "us-east-2"
    north_california = "us-west-1"
    oregon           = "us-west-2"
    stockholm        = "eu-north-1"
    london           = "eu-west-2"
  }
}
