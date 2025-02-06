resource "aws_route53_cidr_location" "default_route53_cidr_location" {
  cidr_collection_id = var.cidr_collection_id
  name               = "${var.cidr_collection_name}"
  cidr_blocks        = var.cidr_blocks
}