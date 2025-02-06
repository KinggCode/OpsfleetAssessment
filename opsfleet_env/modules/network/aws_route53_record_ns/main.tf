resource "aws_route53_record" "default_route53_ns_record" {
  allow_overwrite = var.allow_overwrite
  name            = "${var.name}"
  ttl             = var.ttl
  type            = "${var.type}"
  zone_id         = var.zone_id
  records = var.ns_records
}