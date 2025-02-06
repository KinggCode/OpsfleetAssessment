# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/outputs.tf ---

output "default_iam_mfa_device" {
  value       = "${aws_iam_virtual_mfa_device.default_mfa_device}"
  description = "IAM MFA Device"
}