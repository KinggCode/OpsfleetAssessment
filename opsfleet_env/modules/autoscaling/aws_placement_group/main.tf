resource "aws_placement_group" "default_placement_group" {
  name     = "${var.placement_name}"
  strategy = "${var.placement_strategy}"
}
