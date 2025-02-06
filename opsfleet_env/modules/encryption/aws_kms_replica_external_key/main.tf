resource "aws_kms_replica_external_key" "default_kms_replica_external_key" {
  description             = "${var.description}"
  deletion_window_in_days = var.deletion_days
  primary_key_arn         = var.primary_key_arn

  key_material_base64 = "${var.key_material}" # Must be the same key material as the primary's.
}