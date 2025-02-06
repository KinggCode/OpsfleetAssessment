resource "aws_route53_vpc_association_authorization" "default_route53_vpc_association_authorization" {
  vpc_id  = var.vpc_id
  zone_id = var.zone_id

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}