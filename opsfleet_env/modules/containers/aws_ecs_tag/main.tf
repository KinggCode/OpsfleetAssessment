resource "aws_ecs_tag" "default_ecs_tag" {
  resource_arn = var.cluster_arn
  key          = "${var.key}"
  value        = "${var.value}"
}