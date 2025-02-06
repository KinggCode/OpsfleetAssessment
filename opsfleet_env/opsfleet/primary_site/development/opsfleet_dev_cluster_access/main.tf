

# OpsFleet Root Test User
data "aws_iam_user" "root_test" {
  user_name = "root-test"
}

data "aws_iam_role" "opsfleet_dev_cluster_role" {
  name = "opsfleet_dev_cluster-role"
}

data "aws_eks_cluster" "opsfleet_dev_cluster" {
  name = "opsfleet-dev-cluster"
}