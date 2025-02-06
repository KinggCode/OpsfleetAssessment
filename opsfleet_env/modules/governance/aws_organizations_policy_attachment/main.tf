resource "aws_organizations_policy_attachment" "default_organizations_policy_attachment" {
  policy_id = var.policy_id
  target_id = var.organizational_unit_id
}