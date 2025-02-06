resource "aws_launch_configuration" "default_launch_configuration" {
  name          = "${var.configuration_name}"
  image_id      = var.image_id
  instance_type = "${var.instance_type}"
}