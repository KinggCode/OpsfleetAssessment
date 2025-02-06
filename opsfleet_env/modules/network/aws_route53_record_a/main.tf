resource "aws_route53_record" "default_route53_a_record" {
  zone_id = var.zone_id
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = var.ttl
  records = [var.elastic_pip]

}