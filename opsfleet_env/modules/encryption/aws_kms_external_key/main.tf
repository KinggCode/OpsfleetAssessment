resource "aws_kms_external_key" "default_kms_external_key" {

  description             = var.description
  deletion_window_in_days = var.deletion_days
  multi_region            = var.multi_region
  enabled                 = var.enabled

  key_material_base64 = "${var.key_material}"
}
