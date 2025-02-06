resource "aws_sns_topic_subscription" "default_sns_topic_subscription" {
  topic_arn = "${var.sns_topic_arn}"
  protocol  = "${var.sns_protocol}"
  endpoint  = "${var.sns_endpoint}"
}