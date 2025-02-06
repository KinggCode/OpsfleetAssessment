resource "aws_ec2_managed_prefix_list" "default_prefix_list" {
  name           = "${var.prefix_name}"
  address_family = "${var.address_family}"
  max_entries    = var.max_entries

  tags = {
    name = "${var.prefix_name}"
    Env = "${var.env}"
    company = "${var.company}"
  }
}