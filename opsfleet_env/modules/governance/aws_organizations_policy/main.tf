resource "aws_organizations_policy" "default_organizations_policy" {
  name    = "${var.policy_name}"
  content = var.policy_document
}