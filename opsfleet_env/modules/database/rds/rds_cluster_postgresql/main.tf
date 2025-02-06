/* resource "aws_db_subnet_group" "default_rds_db_subnet_group" {
  name       = "${var.db_subnet_group_name}"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_subnet_group_name}"
  }
} */


# RDS PostgreSQL Cluster
resource "aws_rds_cluster" "default_rds_cluster" {
  cluster_identifier      = "${var.cluster_name}"
  engine                  = "${var.engine}"
  availability_zones      = var.availability_zones
  database_name           = "${var.db_name}"
  master_username         = "${var.master_username}"
  master_password         = "${var.master_password}"
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = "${var.preferred_backup_window}"
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name = var.db_subnet_group_name
}


# RDS Database
resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.core_count
  identifier         = "${var.cluster_name}-${count.index}"
  cluster_identifier = aws_rds_cluster.default_rds_cluster.id
  instance_class     = "${var.instance_class}"
  engine             = aws_rds_cluster.default_rds_cluster.engine
  engine_version     = aws_rds_cluster.default_rds_cluster.engine_version
  performance_insights_enabled = var.performance_insights_enabled
  performance_insights_retention_period  = var.performance_insights_retention_period
  publicly_accessible = var.publicly_accessible

}