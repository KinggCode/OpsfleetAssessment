resource "aws_sqs_queue_redrive_allow_policy" "default_sqs_queue_redrive_allow_policy" {
  queue_url = var.queue_id

  redrive_allow_policy = jsonencode({
    redrivePermission = "${var.redrivePermission}",
    sourceQueueArns   = var.sourceQueueArns
  })
}