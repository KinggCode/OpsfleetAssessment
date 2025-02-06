resource "aws_eks_cluster" "default_fleet_eks_cluster" {
  name     = "${var.cluster_name}"
  role_arn = var.cluster_role_arn
  version  = var.cluster_version
  # bootstrap_self_managed_addons = var.cluster_bootstrap_self_managed_addons

  access_config {
    authentication_mode = "${var.cluster_authentication_mode}"
  }

  # compute_config {
  #   enabled       = var.cluster_compute_config_enabled
  #   node_pools    = var.cluster_compute_config_node_pools
  #   node_role_arn = var.node_pool_role_arn
  # }
  
  # kubernetes_network_config {
  #   elastic_load_balancing {
  #     enabled = var.cluster_network_config_elastic_load_balancing_enabled
  #   }
  # }

  vpc_config {
    endpoint_private_access = var.cluster_vpc_private_access
    endpoint_public_access  = var.cluster_vpc_public_access
    subnet_ids = var.cluster_vpc_subnets
  }

  # storage_config {
  #   block_storage {
  #     enabled = var.cluster_storage_block_storage_enabled
  #   }
  # }

  # zonal_shift_config {
  #     enabled = true
  # }
  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  # depends_on = "${var.cluster_dependencies}"

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}

