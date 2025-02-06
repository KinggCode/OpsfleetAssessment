resource "aws_eks_access_entry" "default_eks_access_entry" {
  cluster_name      = var.cluster_name
  principal_arn     = var.principal_arn
  user_name     = var.user_name
  kubernetes_groups = var.kubernetes_groups
  type              = var.type
  tags = {
    company_name = "${var.company_name}"
    env = "${var.env}"
  }
}