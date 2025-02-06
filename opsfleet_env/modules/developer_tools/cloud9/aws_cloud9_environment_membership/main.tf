resource "aws_cloud9_environment_membership" "default_cloud9_environment_membership" {
  environment_id = var.environment_id
  permissions    = "${var.permissions}"
  user_arn       = var.user_arn
}