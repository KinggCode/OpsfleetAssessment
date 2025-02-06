resource "aws_organizations_organizational_unit" "default_organizational_unit" {
  name      = "${var.organizational_unit_name}"
  parent_id = var.parent_id
}