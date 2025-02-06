resource "aws_db_cluster_snapshot" "default_db_cluster_snapshot" {
  db_cluster_identifier          = var.cluster_id
  db_cluster_snapshot_identifier = "${var.snapshot_identifier}"
}