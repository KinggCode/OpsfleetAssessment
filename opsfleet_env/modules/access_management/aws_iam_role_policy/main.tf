resource "aws_iam_role_policy" "default_iam_role_policy" {
  name        = "${var.policy_name}"
  role = "${var.role}"
  policy      = "${var.policy}"
}