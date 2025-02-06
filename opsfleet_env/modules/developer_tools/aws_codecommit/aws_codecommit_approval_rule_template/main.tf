resource "aws_codecommit_approval_rule_template" "default_codecommit_approval_rule_template" {
  name        = "${var.rule_template_name}"
  description = "${var.rule_template_description}"

  content = var.rule_template_content
}