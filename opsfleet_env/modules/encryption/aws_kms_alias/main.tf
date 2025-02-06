resource "aws_kms_alias" "default_kms_alias" {
  name          = "${var.alias_name}"
  target_key_id = var.key_id
}