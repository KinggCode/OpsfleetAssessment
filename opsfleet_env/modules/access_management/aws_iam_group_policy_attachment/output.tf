# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_group_policy_attachment" {
  value       = "${aws_iam_group_policy_attachment.default_iam_group_policy_attachment}"
  description = "IAM USER Default Group"
}