resource "aws_nat_gateway" "default_nat_gateway" {
  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.nat_gateway_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
}