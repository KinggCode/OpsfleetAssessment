resource "aws_codedeploy_deployment_group" "default_codedeploy_deployment_group" {
  app_name               = var.app_name
  deployment_group_name  = "${var.deployment_group_name}"
  service_role_arn       = var.service_role_arn
  deployment_config_name = var.deployment_config_name

  ec2_tag_filter {
    key   = "${var.ec2_tag_filter_key}"
    type  = "${var.ec2_tag_filter_type}"
    value = "${var.ec2_tag_filter_value}"
  }

  /* trigger_configuration {
    trigger_events     = var.trigger_configuration_trigger_events
    trigger_name       = "${var.trigger_configuration_trigger_name}"
    trigger_target_arn = "${var.trigger_configuration_trigger_target_arn}"
  } */

  auto_rollback_configuration {
    enabled = var.auto_rollback_configuration_enabled
    events  = var.auto_rollback_configuration_events
  }

  alarm_configuration {
    alarms  = var.alarm_configuration_alarms
    enabled = var.alarm_configuration_enabled
  }
}