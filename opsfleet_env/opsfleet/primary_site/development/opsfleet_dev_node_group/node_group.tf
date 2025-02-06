################################################################################
# Opsfleet - Dev Cluster Configuration
################################################################################
data "aws_ssm_parameter" "eks_ami_release_version" {
  name = "/aws/service/eks/optimized-ami/${data.aws_eks_cluster.opsfleet_dev_cluster.version}/amazon-linux-2023/x86_64/standard/recommended/release_version"
}

# OpsFleet Dev Cluster Node Group
module "opsfleet_dev_eks_node_group" {
  source = "../../../../modules/compute/aws_eks_node_group"
  cluster_name = "${var.company_name}-${var.env}-cluster"
  cluster_node_group_name = "${var.company_name}-default-node-group"
  cluster_role_arn =  aws_iam_role.opsfleet_dev_eks_node_group_role.arn
  cluster_vpc_subnets = [data.aws_subnet.opsfleet_dev_web_tier.id,data.aws_subnet.opsfleet_dev_public_tier.id]

  cluster_version         = data.aws_eks_cluster.opsfleet_dev_cluster.version
  cluster_release_version = nonsensitive(data.aws_ssm_parameter.eks_ami_release_version.value)

  cluster_capacity_type = "SPOT"
  cluster_instance_types = ["t4g.medium","m6g.large"]
  cluster_node_disk_size = 50
  ami_type = "AL2_ARM_64"

  scaling_config_desired_size = 2
  scaling_config_max_size = 3
  scaling_config_min_size = 1
  update_config_max_unavailable = 1

}