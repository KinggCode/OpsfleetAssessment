resource "aws_autoscalingplans_scaling_plan" "default_autoscalingplans_scaling_plan" {
  name = "${var.autoscaling_scaling_plan_name}"

  application_source {
    tag_filter {
      key    = "${var.tag_key}"
      values = var.tag_value
    }
  }

  scaling_instruction {
    max_capacity       = var.max_capacity
    min_capacity       = var.min_capacity
    resource_id        = format("autoScalingGroup/%s", var.resource_id)
    scalable_dimension = "${var.scalable_dimension}"
    service_namespace  = "${var.service_namespace}"

    target_tracking_configuration {
      predefined_scaling_metric_specification {
        predefined_scaling_metric_type = "${var.metric_type}"
      }
      target_value = var.target_value
    }
  }
}