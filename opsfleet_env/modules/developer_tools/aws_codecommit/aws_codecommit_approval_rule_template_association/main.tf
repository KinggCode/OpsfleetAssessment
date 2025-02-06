resource "aws_codecommit_approval_rule_template_association" "default_codecommit_approval_rule_template_association" {
  approval_rule_template_name = var.approval_rule_template_name
  repository_name             = var.repository_name
}
