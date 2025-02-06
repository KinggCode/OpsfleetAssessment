resource "aws_cloud9_environment_ec2" "default_cloud9" {
  instance_type = "${var.instance_type}"
  name          = "${var.env_name}"
  subnet_id =   "${var.subnet_id}"
  image_id  = "ubuntu-18.04-x86_64"
}