resource "aws_ecs_account_setting_default" "default_ecs_account_setting_default" {
  name  = "${var.ecs_name}"
  value = "${var.ecs_value}"
}
