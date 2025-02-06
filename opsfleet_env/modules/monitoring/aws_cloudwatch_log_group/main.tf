resource "aws_cloudwatch_log_group" "default_cloudwatch_log_group" {
  name = "${var.group_name}"

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}