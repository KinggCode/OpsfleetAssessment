
# OpsFleet Dev Eks Cluster - IAM Role
resource "aws_iam_role" "opsfleet_dev_cluster_iam_role" {
  name = "${var.company_name}_${var.env}_cluster-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
}

# OpsFleet Dev Eks Cluster - Cluster Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}

# OpsFleet Dev Eks Cluster - Cluster Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_compute_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSComputePolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}

# OpsFleet Dev Eks Cluster - Cluster Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_storage_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}

# OpsFleet Dev Eks Cluster - Load Balancing Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_load_balancing_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}
# OpsFleet Dev Eks Cluster - Networking Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_networking_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}

# OpsFleet Dev Eks Cluster - Cluster Node Policy 
# resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_node_eks_cluster_node_policy" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
#   role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
# }

# OpsFleet Dev Eks Cluster - Container Registry ReadOnly 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_policyContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}

# OpsFleet Dev Eks Cluster - Amazon EKS CNI Policy 
resource "aws_iam_role_policy_attachment" "opsfleet_dev_cluster_eks_cluster_policyAmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.opsfleet_dev_cluster_iam_role.name
}







################################################################################

resource "aws_iam_role" "opsfleet_dev_cluster_node_iam_role" {
  name = "${var.company_name}_${var.env}_node-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
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

resource "aws_iam_role_policy_attachment" "node_AmazonEKSWorkerNodeMinimalPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"
  role       = aws_iam_role.opsfleet_dev_cluster_node_iam_role.name
}

resource "aws_iam_role_policy_attachment" "node_AmazonEC2ContainerRegistryPullOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
  role       = aws_iam_role.opsfleet_dev_cluster_node_iam_role.name
}


# OpsFleet Dev Eks Cluster IAM User Policy 
resource "aws_iam_user_policy" "root_policy" {
  name = "test"
  user = data.aws_iam_user.root_test.user_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        Effect   = "Allow"
        Resource = "*",
        
      },
    ]
  })
}