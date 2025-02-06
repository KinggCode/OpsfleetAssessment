# SPDX-License-Identifier: MIT-0

# --- root/outputs.tf ---

output "default_queue" {
  value = aws_sqs_queue.default_queue
}