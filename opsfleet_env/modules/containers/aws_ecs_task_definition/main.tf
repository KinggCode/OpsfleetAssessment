resource "aws_ecs_task_definition" "default_ecs_task_definition" {
  family = "${var.family}"
  container_definitions = var.container_definitions
  volume {
    name      = "${var.volume_name}"
    host_path = "${var.volume_host_path}"
  }

  placement_constraints {
    type       = "${var.placement_type}"
    expression = "${var.placement_expression}"
  }
}