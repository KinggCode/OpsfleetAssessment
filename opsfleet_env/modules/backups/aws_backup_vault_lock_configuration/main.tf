resource "aws_backup_vault_lock_configuration" "test" {
  backup_vault_name   = "example_backup_vault"
  changeable_for_days = 3
  max_retention_days  = 1200
  min_retention_days  = 7
}