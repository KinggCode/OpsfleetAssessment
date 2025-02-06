resource "aws_route53_health_check" "default_aws_route53_health_check_http" {
  fqdn              = "${var.fqdn}"
  port              = var.port
  type              = "${var.type}"
  resource_path     = "${var.resource_path}"
  failure_threshold = "${var.failure_threshold}"
  request_interval  = "${var.request_interval}"

  tags = {
    Name = "${var.health_check_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
}