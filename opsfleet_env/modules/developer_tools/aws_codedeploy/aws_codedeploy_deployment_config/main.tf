
resource "aws_codedeploy_deployment_config" "default_codedeploy_deployment_config" {
  deployment_config_name = "${var.deployment_config_name}"

  minimum_healthy_hosts {
    type  = "${var.type}"
    value = var.value
  }
}