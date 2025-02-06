# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "project_name" {
  description = "Default Project Name"
  type        = string
  default     = "test-project"

}

variable "project_description" {
  description = "Default Project Description"
  type        = string
  default     = "test_codebuild_project"
}




variable "buildspec" {
  description = "Default Project Description"
  type        = string
  default     = "default"
}

variable "build_timeout" {
  description = "Default Build Timeout"
  type        = number
  default     = 5

}

variable "service_role_arn" {
  description = "Default Service ARN"
  type        = string
  default     = "test_codebuild_project"
}

# Artifacts
###############################################################################
variable "artifact_type" {
  description = "Default Service ARN"
  type        = string
  default     = "NO_ARTIFACTS"
}


# Cache 
###############################################################################
variable "cache_type" {
  description = "Default Cache Type"
  type        = string
  default     = "NO_ARTIFACTS"
}

variable "cache_location" {
  description = "Default Cache Location : s3 Bucket"
  type        = string
  default     = "NO_ARTIFACTS"
}


# Environment 
###############################################################################
variable "compute_type" {
  description = "Default Compute Type"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "image" {
  description = "Default Cache Location : s3 Bucket"
  type        = string
  default     = "aws/codebuild/standard:1.0"
}

variable "type" {
  description = "Default Environment Type"
  type        = string
  default     = "LINUX_CONTAINER"
}

variable "image_pull_credentials_type" {
  description = "Default Image Pull Credentials Type"
  type        = string
  default     = "CODEBUILD"
}


# Environment Variables 
###############################################################################

variable "environment_variable_name" {
  description = "Default Environment Type"
  type        = string
  default     = "SOME_KEY1"
}

variable "environment_variable_value" {
  description = "Default Image Pull Credentials Type"
  type        = string
  default     = "SOME_VALUE1"
}



# Log Config
###############################################################################

variable "cloudwatch_logs_group_name" {
  description = "Default Environment Type"
  type        = string
  default     = "log-group"
}

variable "cloudwatch_logs_stream_name" {
  description = "Default Image Pull Credentials Type"
  type        = string
  default     = "log-stream"
}


variable "s3_logs_status" {
  description = "Default Environment Type"
  type        = string
  default     = "ENABLED"
}

variable "s3_logs_location" {
  description = "Default Image Pull Credentials Type"
  type        = string
  default     = "s3_bucket/build-log"
}


# Source
###############################################################################

variable "source_type" {
  description = "Default Environment Type"
  type        = string
  default     = "GITHUB"
}

variable "source_location" {
  description = "Default Image Pull Credentials Type"
  type        = string
  default     = "https://github.com/mitchellh/packer.git"
}

variable "git_clone_depth" {
  description = "Default Environment Type"
  type        = number
  default     = 1
}


variable "fetch_submodules" {
  description = "Default Git Submodules Fetch"
  type        = bool
  default     = true
}



# Source Version
###############################################################################



variable "source_version" {
  description = "Default Source Version"
  type        = string
  default     = "master"
}


# VPC
###############################################################################

variable "vpc_id" {
  description = "Default VPC ID"
  type        = string
  default     = "default"
}


variable "subnets" {
  description = "Default Subnet IDS"
  type        = list(string)
  default     = ["default"]
}


variable "security_groups" {
  description = "Default Security Group IDS"
  type        = list(string)
  default     = ["default"]
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