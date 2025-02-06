# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "cluster_name" {
  type        = string
  description = "Default IAM User ."
  default = ""
}

variable "principal_arn" {
  type        = string
  description = "Default IAM Role ARN."
  default = ""
}

variable "user_name" {
  type        = string
  description = "Default User name"
  default = ""
}


variable "kubernetes_groups" {
  type        = list(string)
  description = "Default Kubernetes Groups."
  default = ["group-1", "group-2"]
}

variable "type" {
  type        = string
  description = "Default Type."
  default = "STANDARD"
}

variable "company_name" {
  type        = string
  description = "Default Company Name."
  default = "opsfleet"
}

variable "env" {
  type        = string
  description = "Default Environment."
  default = "dev"
}