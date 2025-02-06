resource "aws_eip" "default_eip" {
  associate_with_private_ip =  var.private_ip
  domain   = "${var.domain}"
  network_interface = "${var.network_interface_id}"

  tags = {
    Name = "${var.eip_name}"
    env = "${var.env}"
    company = "${var.company}"
  }

}