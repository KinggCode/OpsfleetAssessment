resource "aws_organizations_account" "default_account" {
  name  = "${var.member_account_name}"
  email = "${var.member_account_email}"
}