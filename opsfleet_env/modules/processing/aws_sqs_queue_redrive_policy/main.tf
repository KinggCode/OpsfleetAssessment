
resource "aws_sqs_queue_redrive_policy" "default_sqs_queue_redrive_policy" {
  queue_url = var.queue_id
  redrive_policy = jsonencode({
    deadLetterTargetArn = var.deadLetterTargetArn
    maxReceiveCount     = var.maxReceiveCount
  })
}