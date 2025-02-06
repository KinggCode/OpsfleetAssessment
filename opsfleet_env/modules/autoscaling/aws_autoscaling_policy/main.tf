resource "aws_autoscaling_policy" "default_autoscaling_policy" {
  name                   = "${var.policy_name}"
  scaling_adjustment     = var.scaling_adjustment
  adjustment_type        = "${var.adjustment_type}"
  cooldown               = var.cooldown
  autoscaling_group_name = var.autoscaling_group_name
}