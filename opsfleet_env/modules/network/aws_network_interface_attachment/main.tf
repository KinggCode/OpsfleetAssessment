resource "aws_network_interface_attachment" "default_network_interface_attachment" {
  instance_id          = var.instance_id
  network_interface_id = var.network_interface_id
  device_index         = var.device_index

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}