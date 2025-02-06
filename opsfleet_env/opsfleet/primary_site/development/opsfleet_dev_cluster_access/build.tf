# Root Test User Access Entry to AKS Cluster
module "opsfleet_root_test_eks_access_entry" {
  source = "../../../../modules/access_management/aws_eks_access_entry"
  cluster_name = data.aws_eks_cluster.opsfleet_dev_cluster.name
  principal_arn = data.aws_iam_role.opsfleet_dev_cluster_role.arn
  user_name = "eugene-parker"
  kubernetes_groups = ["opsfleet_admin", "opsfleet_developers"]
  type = "STANDARD"
  company_name = "opsfleet"
  env = "dev"
}

# Admin Access Entry to AKS Cluster
module "opsfleet_root_eks_access_entry" {
  source = "../../../../modules/access_management/aws_eks_access_entry"
  cluster_name = data.aws_eks_cluster.opsfleet_dev_cluster.name
  principal_arn = data.aws_iam_role.opsfleet_dev_cluster_role.arn
  user_name = "root"
  kubernetes_groups = ["opsfleet_admin", "opsfleet_developers"]
  type = "STANDARD"
  company_name = "opsfleet"
  env = "dev"
}