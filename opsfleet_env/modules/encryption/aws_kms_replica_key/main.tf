
resource "aws_kms_replica_key" "default_kms_replica_key" {
  description             ="${var.description}"
  deletion_window_in_days = var.deletion_days
  primary_key_arn         = var.primary_key_arn

}