resource "aws_network_acl" "default_network_acl" {
  vpc_id = var.vpc_id

  egress {
    protocol   = "${var.egress_protocol}"
    rule_no    = var.egress_rule_no
    action     = "${var.egress_action}"
    cidr_block = "${var.egress_cidr_block}"
    from_port  = var.egress_from_port
    to_port    = var.egress_to_port
  }

  ingress {
    protocol   = "${var.ingress_protocol}"
    rule_no    = var.ingress_rule_no
    action     = "${var.ingress_action}"
    cidr_block = "${var.ingress_cidr_block}"
    from_port  = var.ingress_from_port
    to_port    = var.ingress_to_port
  }

  tags = {
    Name = "${var.network_acl_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
  subnet_ids = var.subnets
}