resource "aws_sqs_queue" "default_queue" {
  name                        = "${var.queue_name}"
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  sqs_managed_sse_enabled = var.sqs_managed_sse_enabled

}