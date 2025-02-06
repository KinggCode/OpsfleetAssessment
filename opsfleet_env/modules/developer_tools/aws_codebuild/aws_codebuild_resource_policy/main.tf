
resource "aws_codebuild_resource_policy" "default_codebuild_resource_policy" {
  resource_arn = var.report_group_arn
  policy = var.policy
}