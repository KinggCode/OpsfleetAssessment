resource "aws_eip" "default_cloud9_eip" {
  instance =  var.instance_id
  domain   = "${var.domain}"

  tags = {
    Name = "${var.eip_name}"
    env = "${var.env}"
    company = "${var.company}"
  }

}