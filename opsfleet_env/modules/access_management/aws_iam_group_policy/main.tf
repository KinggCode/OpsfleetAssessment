resource "aws_iam_group_policy" "default_iam_group_policy" {
  name  = "${var.policy_name}"
  group = "${var.group_name}"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = var.policy
}