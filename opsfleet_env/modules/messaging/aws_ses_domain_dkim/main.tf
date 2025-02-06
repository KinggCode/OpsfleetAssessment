
resource "aws_ses_domain_dkim" "default_ses_domain_dkim" {
  domain = var.domain
}