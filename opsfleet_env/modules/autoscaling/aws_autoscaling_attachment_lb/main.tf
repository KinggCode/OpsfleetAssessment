# Create a new load balancer attachment
resource "aws_autoscaling_attachment" "aws_autoscaling_attachment" {
  autoscaling_group_name = var.autoscaling_group_id
  elb                    = var.load_balancer_id
}