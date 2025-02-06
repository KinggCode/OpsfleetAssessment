resource "aws_iam_user" "default_default_user" {
  name = "${var.user_name}"
}