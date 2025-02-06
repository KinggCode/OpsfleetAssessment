resource "aws_security_group" "default_security_group" {
  name        = "${var.security_group_name}"
  description = "${var.security_group_description}"
  vpc_id      = var.vpc_id

  ingress {
    description      = "${var.ingress_description}"
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = "${var.ingress_protocol}"
    cidr_blocks      = var.ingress_vpc_cidr_block
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "${var.egress_protocol}"
    cidr_blocks      = var.egress_vpc_cidr_block
  }

  tags = {
    Name = "${var.security_group_name}"
  }
}