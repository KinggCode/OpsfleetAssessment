# OpsFleet Inc. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- root/provider.tf ---

terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.28.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 0.30.0"
    }
  }
}