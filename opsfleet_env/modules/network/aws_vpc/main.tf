resource "aws_vpc" "default_vpc" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "${var.instance_tenancy}"
  enable_dns_hostnames  = "${var.enable_dns_hostnames}"
  enable_dns_support  = "${var.enable_dns_support}"

  tags = {
    Name = "${var.vpc_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
}