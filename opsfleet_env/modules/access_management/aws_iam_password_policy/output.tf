# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_password_policy" {
  value       = "${aws_iam_account_password_policy.default_password_policy}"
  description = "IAM Account Password Policy"
}