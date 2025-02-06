
resource "aws_ecs_capacity_provider" "default_ecs_capacity_provider" {
  name = "${var.ecs_capacity_name}"

  auto_scaling_group_provider {
    auto_scaling_group_arn         = var.auto_scaling_group_arn
    managed_termination_protection = "${var.managed_termination_protection}"

    managed_scaling {
      maximum_scaling_step_size = var.maximum_scaling_step_size
      minimum_scaling_step_size = var.minimum_scaling_step_size
      status                    = "${var.status}"
      target_capacity           = var.target_capacity
    }
  }
}