resource "aws_flow_log" "default_flow_log" {
  iam_role_arn    = var.role_arn
  log_destination = var.cloudwatch_log_group
  traffic_type    = "${var.traffic_type}"
  vpc_id          = var.vpc_id
}