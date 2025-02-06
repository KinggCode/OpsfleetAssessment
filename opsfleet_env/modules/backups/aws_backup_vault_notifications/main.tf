resource "aws_backup_vault_notifications" "test" {
  backup_vault_name   = "example_backup_vault"
  sns_topic_arn       = aws_sns_topic.test.arn
  backup_vault_events = ["BACKUP_JOB_STARTED", "RESTORE_JOB_COMPLETED"]
}