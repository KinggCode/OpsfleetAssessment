resource "aws_iam_group" "default_iam_group" {
  name = "${var.group_name}"
  path = "/${var.group_name}/"
}