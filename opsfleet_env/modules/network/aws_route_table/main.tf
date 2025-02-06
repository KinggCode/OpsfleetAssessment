resource "aws_route_table" "default_route_table" {
  vpc_id = var.vpc_id

  route = []

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}