resource "aws_route53_zone_association" "default_route53_zone_association" {
  zone_id = var.zone_id
  vpc_id  = var.vpc_id
  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}