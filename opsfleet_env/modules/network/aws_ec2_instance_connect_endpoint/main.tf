resource "aws_ec2_instance_connect_endpoint" "default_ec2_instance_connect_endpoint" {
  subnet_id = var.subnet_id

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}