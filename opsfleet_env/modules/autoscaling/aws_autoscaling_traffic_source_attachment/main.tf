resource "aws_autoscaling_traffic_source_attachment" "default_autoscaling_traffic_source_attachment" {
  autoscaling_group_name = var.autoscaling_group_name

  traffic_source {
    identifier = var.traffic_identifier
    type       = "${var.traffic_type}"
  }
}