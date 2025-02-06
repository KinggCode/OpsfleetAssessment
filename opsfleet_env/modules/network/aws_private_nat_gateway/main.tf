resource "aws_nat_gateway" "default_private_nat_gateway" {
  connectivity_type = "${var.connectivity_type}"
  subnet_id         = var.subnet_id

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}