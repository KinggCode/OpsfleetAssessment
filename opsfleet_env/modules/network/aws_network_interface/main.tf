resource "aws_network_interface" "default_nic" {
  subnet_id       = var.subnet_id
  security_groups = var.security_group_id

  attachment {
    instance     = var.instance_id
    device_index = var.device_index
  }
}