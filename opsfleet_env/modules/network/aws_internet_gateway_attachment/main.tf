resource "aws_internet_gateway_attachment" "default_internet_gateway_attachment" {
  internet_gateway_id = var.internet_gateway_id
  vpc_id              = var.vpc_id

}