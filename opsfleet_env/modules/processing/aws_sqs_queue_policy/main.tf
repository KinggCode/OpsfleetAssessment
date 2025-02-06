resource "aws_sqs_queue_policy" "default_sqs_queue_policy" {
  queue_url = var.queue_id
  policy    = var.policy_json
}
