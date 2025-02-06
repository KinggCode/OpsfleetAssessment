resource "aws_sns_topic_policy" "default_sns_topic_policy" {
  arn = var.sns_topic_arn
  policy = var.policy
}
