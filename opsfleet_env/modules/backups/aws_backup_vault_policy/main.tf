resource "aws_backup_vault_policy" "example" {
  backup_vault_name = aws_backup_vault.example.name
  policy            = data.aws_iam_policy_document.example.json
}