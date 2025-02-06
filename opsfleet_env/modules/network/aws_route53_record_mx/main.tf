resource "aws_route53_record" "default_route53_mx_record" {
  zone_id = var.zone_id
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = var.ttl

  weighted_routing_policy {
    weight = var.policy_weight
  }

  set_identifier = "${var.set_identifier}"
  records        = var.records
}