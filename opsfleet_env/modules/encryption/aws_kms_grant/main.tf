resource "aws_kms_grant" "default_aws_kms_grant" {
  name              = "${var.grant_name}"
  key_id            = var.key_id
  grantee_principal = var.role_arn
  operations        = var.operations

  constraints {
    encryption_context_equals = {
      Department = "${var.department}"
    }
  }
}