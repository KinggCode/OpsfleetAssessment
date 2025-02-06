resource "aws_kms_key" "default_kms_key" {
  description             = "${var.description}"
  deletion_window_in_days = var.deletion_days
}
