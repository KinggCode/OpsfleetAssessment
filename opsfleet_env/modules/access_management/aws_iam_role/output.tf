# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_role" {
  value       = "${aws_iam_role.default_iam_role}"
  description = "Default IAM ROLE "
}