resource "aws_vpc_endpoint" "default_aws_vpc_endpoint" {
  vpc_id            = var.vpc_id
  service_name      = "${var.service_name}"
  vpc_endpoint_type = "${var.vpc_endpoint_type}"
  # subnet_configuration {
  #   ipv4      = "${var.subnet_range}"
  #   subnet_id = var.subnet_id
  # }
  subnet_ids = var.subnet_ids
}