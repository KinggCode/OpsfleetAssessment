# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_user" {
  value       = "${aws_iam_user.default_default_user}"
  description = "Default IAM USER "
}