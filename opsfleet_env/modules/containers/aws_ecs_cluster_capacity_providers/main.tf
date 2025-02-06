resource "aws_ecs_cluster_capacity_providers" "default_ecs_cluster_capacity_providers" {
  cluster_name = var.cluster_name

  capacity_providers = var.capacity_providers

  default_capacity_provider_strategy {
    base              = var.capacity_provider_base
    weight            =  var.capacity_provider_weight
    capacity_provider = "${var.capacity_provider}"
  }
}