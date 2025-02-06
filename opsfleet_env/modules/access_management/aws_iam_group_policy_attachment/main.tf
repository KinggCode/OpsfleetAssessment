resource "aws_iam_group_policy_attachment" "default_iam_group_policy_attachment" {
  group      = var.group_name
  policy_arn = var.policy_arn
}