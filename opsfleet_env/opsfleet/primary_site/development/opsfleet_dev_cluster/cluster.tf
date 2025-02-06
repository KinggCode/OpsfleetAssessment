################################################################################
# Opsfleet - Dev Cluster Configuration
################################################################################

# OpsFleet Dev EKS Cluster 
module "opsfleet_dev_eks_cluster" {
  source = "../../../../modules/compute/aws_eks_cluster"

  cluster_name = "${var.company_name}-${var.env}-cluster"
  cluster_role_arn =  aws_iam_role.opsfleet_dev_cluster_iam_role.arn
  
  node_pool_role_arn =  aws_iam_role.opsfleet_dev_cluster_node_iam_role.arn
  cluster_version = "1.32"
  cluster_bootstrap_self_managed_addons = false

  cluster_authentication_mode = "API"
  cluster_compute_config_node_pools = ["system","general-purpose"]
  cluster_network_config_elastic_load_balancing_enabled = true

  cluster_vpc_private_access = true
  cluster_vpc_public_access = true
  cluster_vpc_subnets = [data.aws_subnet.ops_fleet_dev_web_tier.id,data.aws_subnet.ops_fleet_dev_public_tier.id,]
  # cluster_dependencies = [aws_iam_role_policy_attachment.opsfleet_dev_cluster_eks_cluster_policy,]

  env = "${var.env}"
  company = "${var.company_fullname}"
}

