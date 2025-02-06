resource "aws_route53_health_check" "default_route53_health_check_cw" {
  type                            = "${var.health_check_type}"
  cloudwatch_alarm_name           = var.cloudwatch_alarm_name
  cloudwatch_alarm_region         = "${var.cloudwatch_alarm_region}"
  insufficient_data_health_status = "${var.insufficient_data_health_status}"
  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}