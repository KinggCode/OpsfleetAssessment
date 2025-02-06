
resource "aws_lb_listener_rule" "admin" {
  listener_arn = aws_lb_listener.front_end.arn

  action {
    type = "authenticate-cognito"

    authenticate_cognito {
      user_pool_arn       = aws_cognito_user_pool.pool.arn
      user_pool_client_id = aws_cognito_user_pool_client.client.id
      user_pool_domain    = aws_cognito_user_pool_domain.domain.domain
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.static.arn
  }
}