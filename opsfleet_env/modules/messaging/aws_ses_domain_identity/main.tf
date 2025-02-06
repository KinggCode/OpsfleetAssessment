resource "aws_ses_domain_identity" "default_ses_domain_identity" {
  domain = "${var.domain}"
}