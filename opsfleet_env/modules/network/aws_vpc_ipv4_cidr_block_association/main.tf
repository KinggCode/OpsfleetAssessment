resource "aws_vpc_ipv4_cidr_block_association" "default_secondary_cidr" {
  vpc_id     = var.vpc_id
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "${var.vpc_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
}