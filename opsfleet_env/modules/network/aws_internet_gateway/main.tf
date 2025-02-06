resource "aws_internet_gateway" "default_internet_gw" {
  vpc_id = var.vpc_id

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}