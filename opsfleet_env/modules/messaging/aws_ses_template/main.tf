resource "aws_ses_template" "default_ses_template" {
  name    = var.name
  subject = var.subject
  html    = var.html
  text    = var.text
}