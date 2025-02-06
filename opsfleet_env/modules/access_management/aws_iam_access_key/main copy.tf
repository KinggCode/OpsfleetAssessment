resource "aws_iam_access_key" "default_iam_access_key" {
  user = "${var.user_name}"
}

