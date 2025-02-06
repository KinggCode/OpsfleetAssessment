# OpsFleet Dev EKS Node Group Role
resource "aws_iam_role" "opsfleet_dev_eks_node_group_role" {
  name = "opsfleet-dev-cluster-node-group-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = [
            "ec2.amazonaws.com",
            ]
        }
      },
    ]
  })
}

# OpsFleet Dev EKS Node Worker Node Policy
resource "aws_iam_role_policy_attachment" "opsfleet_dev_eks_worker_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.opsfleet_dev_eks_node_group_role.name
}

# OpsFleet Dev EKS Node Worker CNI Policy
resource "aws_iam_role_policy_attachment" "opsfleet_dev_eks_worker_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.opsfleet_dev_eks_node_group_role.name
}

# OpsFleet Dev EKS Node Worker Container Registry Policy
resource "aws_iam_role_policy_attachment" "opsfleet_dev_eks_worker_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.opsfleet_dev_eks_node_group_role.name
}
