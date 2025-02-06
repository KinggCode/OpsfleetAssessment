# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_user_ssh_key" {
  value       = "${aws_iam_user_ssh_key.default_iam_user_ssh_key}"
  description = "Default IAM USER SSH Key "
}