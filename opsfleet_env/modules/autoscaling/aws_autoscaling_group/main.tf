resource "aws_autoscaling_group" "default_autoscaling_group" {
  name                      = "${var.autoscaling_group_name}"
  max_size                  = var.max_size
  min_size                  = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = "${var.health_check_type}"
  desired_capacity          = var.desired_capacity
  force_delete              = var.force_delete
  placement_group           = var.placement_group_id
  vpc_zone_identifier       = var.vpc_zone_identifier
  launch_template {
    id      = var.launch_template
    version = "$Latest"
  }
 
  tag {
     key                 = "${var.tag_key_1}"
    value               = "${var.tag_value_1}"
    propagate_at_launch = var.tag_propagate_at_launch_1
  }

  timeouts {
    delete = "15m"
  }

}