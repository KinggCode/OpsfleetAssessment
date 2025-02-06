resource "aws_ec2_transit_gateway" "default_ec2_transit_gateway" {
  description = "${var.transit_gateway_description}"
  amazon_side_asn = var.amazon_side_asn
  default_route_table_association = "${var.default_route_table_association}"
  default_route_table_propagation = "${var.default_route_table_propagation}"

  tags = {
    Name = "tgw-us-east-1"
    env = "${var.env}"
    company = "${var.company}"
  }
}