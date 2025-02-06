resource "aws_autoscaling_schedule" "default_autoscaling_schedule" {
  scheduled_action_name  = "${var.schedule_name}"
  min_size               = var.min_size
  max_size               = var.max_size
  desired_capacity       = var.desired_capacity
  start_time             = "${var.start_time}"
  end_time               = "${var.end_time}"
  autoscaling_group_name = var.autoscaling_group_name
}