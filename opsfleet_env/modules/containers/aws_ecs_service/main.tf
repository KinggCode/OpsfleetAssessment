resource "aws_ecs_service" "default_ecs_service" {
  name            = "${var.service_name}"
  cluster         = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count   = var.desired_count
  iam_role        = var.iam_role_arn

  ordered_placement_strategy {
    type  = "${var.placement_type}"
    field = "${var.placement_field}"
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = "${var.container_name}"
    container_port   = var.container_port
  }

  placement_constraints {
    type       = "${var.placement_type}"
    expression = "${var.placement_expression}"
  }
}