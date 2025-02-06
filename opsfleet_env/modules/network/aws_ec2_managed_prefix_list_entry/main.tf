resource "aws_ec2_managed_prefix_list_entry" "default_prefix_entry" {
  cidr           = var.vpc_cidr
  description    = "${var.description}"
  prefix_list_id = var.prefix_id

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }

}