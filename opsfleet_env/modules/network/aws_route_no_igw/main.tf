resource "aws_route" "default_route" {
  route_table_id              = "${var.route_table_id}"
  destination_cidr_block = "${var.destination_cidr_block}"
}