resource "aws_ses_domain_mail_from" "default_ses_domain_mail_from" {
  domain           = var.domain
  mail_from_domain = "bounce.${var.mail_from_domain}"
}
