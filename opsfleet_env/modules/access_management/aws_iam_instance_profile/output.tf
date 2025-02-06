# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_instance_profile" {
  value       = "${aws_iam_instance_profile.default_instance_profile}"
  description = "IAM MFA Device"
}