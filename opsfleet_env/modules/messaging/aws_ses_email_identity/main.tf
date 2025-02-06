resource "aws_ses_email_identity" "default_ses_email_identity" {
  email = var.email
}
