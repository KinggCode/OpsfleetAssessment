resource "aws_sns_topic_data_protection_policy" "default_sns_topic_data_protection_policy" {
  arn = var.sns_topic_arn
  policy = var.policy
}