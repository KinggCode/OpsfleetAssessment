resource "aws_ecs_cluster" "default_ecs_cluster" {
  name = "${var.cluster_name}"

  configuration {
    execute_command_configuration {
      kms_key_id = var.key_id
      logging    = "${var.cluster_logging}"

      log_configuration {
        cloud_watch_encryption_enabled = var.cloud_watch_encryption_enabled
        cloud_watch_log_group_name     = var.cloud_watch_log_group_name
      }
    }
  }
}