# SPDX-License-Identifier: MIT-0

# --- root/outputs.tf ---

output "default_sqs_queue_redrive_allow_policy" {
  value = aws_sqs_queue_redrive_allow_policy.default_sqs_queue_redrive_allow_policy
}