resource "aws_kms_key_policy" "default_kms_key_policy" {
  key_id = var.key_id
  policy = var.policy
}