resource "aws_route53_cidr_collection" "default_route53_cidr_collection" {
  name = "${var.cidr_collection}"
}