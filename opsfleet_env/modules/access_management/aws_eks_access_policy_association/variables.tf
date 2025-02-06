# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "cluster_name" {
  type        = string
  description = "Default IAM User ."
  default = ""
}

variable "policy_arn" {
  type        = string
  description = "Default Policy ARN."
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"
}

variable "principal_arn" {
  type        = string
  description = "Default IAM USER ARN."
  default = ""
}

variable "access_scope_namespaces" {
  type        = list(string)
  description = "Default Access Scope Namespaces."
  default = ["example-namespace"]
}

variable "access_scope_type" {
  type        = string
  description = "Default Access Scope Type."
  default = "namespace"
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