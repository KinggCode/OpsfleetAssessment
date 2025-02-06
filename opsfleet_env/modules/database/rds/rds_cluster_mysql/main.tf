resource "aws_rds_cluster" "default_rds_cluster" {
  cluster_identifier      = "${var.cluster_name}"
  availability_zones      = var.availability_zones
  database_name           = "${var.db_name}"
  master_username         = "${var.master_username}"
  master_password         = "${var.master_password}"
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = "${var.preferred_backup_window}"
}


resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.core_count
  identifier         = "${var.cluster_name}-${count.index}"
  cluster_identifier = aws_rds_cluster.default_rds_cluster.id
  instance_class     = "${var.instance_class}"
  engine             = aws_rds_cluster.default_rds_cluster.engine
  engine_version     = aws_rds_cluster.default_rds_cluster.engine_version
}