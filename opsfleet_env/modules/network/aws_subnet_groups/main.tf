resource "aws_db_subnet_group" "default_db_subnet_group" {
  name       = "${var.subnet_group_name}"
  subnet_ids = var.subnets
  tags = {
    name = "${var.subnet_group_name}"
    company = "${var.company}"
    env = "${var.env}"
  }
}
