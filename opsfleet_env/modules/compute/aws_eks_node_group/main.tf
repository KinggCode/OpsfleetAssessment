resource "aws_eks_node_group" "default_eks_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.cluster_node_group_name}"
  node_role_arn   = var.cluster_role_arn
  subnet_ids      = var.cluster_vpc_subnets
  capacity_type   = "${var.cluster_capacity_type}" # Use "ON_DEMAND" for mixed strategy
  # version =  var.cluster_version
  # release_version = var.cluster_release_version

  instance_types = var.cluster_instance_types # Graviton (ARM64) and x86
  disk_size = var.cluster_node_disk_size
  # force_update_version = true
  # node_repair_config {
  #   enabled = true
  # }
  scaling_config {
    desired_size = var.scaling_config_desired_size
    max_size     = var.scaling_config_max_size
    min_size     = var.scaling_config_min_size
  }

  update_config {
    max_unavailable = var.update_config_max_unavailable
  }

  ami_type = "${var.ami_type}" # Amazon Linux 2 for x86; use "AL2_ARM_64" for Graviton

  # dynamic "taint" {
  #   for_each = 
  #   content {
  #     key    = "${var.taint_key}"
  #     value  = "${var.taint_value}"
  #     effect = "${var.taint_effect}"
  #   }
  # }

  # labels = {
  #   "arch" = "mixed"
  # }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
}