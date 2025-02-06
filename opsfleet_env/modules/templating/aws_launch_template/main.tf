resource "aws_launch_template" "default_launch_template" {
  name_prefix   = "${var.template_name}"
  image_id      = "${var.image_id}"
  instance_type = "${var.instance_type}"

  block_device_mappings {
    device_name = "/dev/sdf"

    ebs {
      volume_size = var.volume_size
    }
  }

   monitoring {
    enabled = var.enable_monitoring
  }

  vpc_security_group_ids = var.security_groups

}