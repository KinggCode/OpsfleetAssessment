# Create a new ALB Target Group attachment
resource "aws_autoscaling_attachment" "default_autoscaling_attachment" {
  autoscaling_group_name = var.autoscaling_group_id
  lb_target_group_arn    = var.lb_target_group_arn
}