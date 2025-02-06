resource "aws_kms_key" "default_kms_key" {
  description             = "${var.member_account_name}"
  deletion_window_in_days = var.deletion_days
  policy                  = var.policy
}
