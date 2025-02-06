resource "aws_iam_role" "default_iam_role" {
  name = "${var.role_name}"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = var.assume_role_policy
  tags = {
    tag-key = "${var.role_name}"
  }
}