resource "aws_lb_listener" "default_lb_listener" {
  load_balancer_arn = var.load_balancer_arn
  port              = "${var.port}"
  protocol          = "${var.protocol}"

  default_action {
    type = "${var.action_type}"

    redirect {
      port        = "${var.redirect_port}"
      protocol    = "${var.redirect_protocol}"
      status_code = "${var.redirect_status_code}"
    }
  }
}