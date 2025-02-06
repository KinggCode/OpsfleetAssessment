resource "aws_ses_identity_policy" "default_ses_identity_policy" {
  identity = var.identity
  name     = var.name
  policy   = var.policy
}