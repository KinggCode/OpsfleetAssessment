resource "aws_sns_topic" "default_sns_topic" {
  name                        = "${var.sns_topic_name}"
  fifo_topic                  = var.sns_topic_fifo_topic
  content_based_deduplication = var.sns_topic_content_based_deduplication
  delivery_policy = var.sns_topic_delivery_policy
}
