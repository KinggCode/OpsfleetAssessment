# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_group_policy" {
  value       = "${aws_iam_group_policy.default_iam_group_policy}"
  description = "IAM USER Default Group Policy"
}