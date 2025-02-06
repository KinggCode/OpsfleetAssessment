# OpsFleet Dev Web Tier Subnet
data "aws_subnet" "opsfleet_dev_web_tier" {
  id = var.web_tier_subnet
}

# OpsFleet Dev Public Tier Subnet
data "aws_subnet" "opsfleet_dev_public_tier" {
  id = var.public_tier_subnet
}

# OpsFleet Dev Cluster
data "aws_eks_cluster" "opsfleet_dev_cluster" {
  name = "opsfleet-dev-cluster"
}

# data "aws_iam_role" "opsfleet_dev_node_role" {
#   name = "opsfleet_dev_node_role"
# }