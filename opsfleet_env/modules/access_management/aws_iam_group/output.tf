# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_group" {
  value       = "${aws_iam_group.default_iam_group}"
  description = "IAM USER Default Group"
}