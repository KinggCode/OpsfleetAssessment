resource "aws_ses_active_receipt_rule_set" "default_ses_active_receipt_rule_set" {
  rule_set_name = "${var.rule_set_name}"
}