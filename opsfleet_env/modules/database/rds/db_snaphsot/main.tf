resource "aws_db_snapshot" "default_db_snapshot" {
  db_instance_identifier = var.db_dentifier
  db_snapshot_identifier = "${var.snapshot_identifier}"
}