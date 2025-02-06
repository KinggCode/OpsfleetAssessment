resource "aws_backup_global_settings" "test" {
  global_settings = {
    "isCrossAccountBackupEnabled" = "true"
  }
}