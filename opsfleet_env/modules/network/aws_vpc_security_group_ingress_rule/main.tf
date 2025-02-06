resource "aws_vpc_security_group_ingress_rule" "default_vpc_security_group_ingress_rule" {
  security_group_id = var.security_group_id
  description =  var.description
  cidr_ipv4   = "${var.cidr_ipv4}"
  from_port   = var.from_port
  ip_protocol = "${var.ip_protocol}"
  to_port     = var.to_port

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}