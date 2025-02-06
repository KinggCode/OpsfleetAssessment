# OpsFleet Dev Cluster - Infrastructure Overview

# Introduction

The OpsFleet Dev Cluster is an AWS Elastic Kubernetes Service (EKS) cluster configured to provide a development environment for OpsFleet. This document outlines the key infrastructure components, IAM roles, policies, and networking configurations that are part of this cluster.

# Purpose: Creates an Amazon Elastic Kubernetes Service (EKS) cluster.
- Uses the terraform-aws-resources/eks module, which simplifies EKS creation.

# Key Configurations:
- cluster_name: The name of the EKS cluster (e.g., karpenter-eks-cluster).
- cluster_version: Specifies the Kubernetes version.
- vpc_id and subnet_ids: Defines where the cluster is deployed.
- node_groups: Set to empty because Karpenter will handle the scaling of worker nodes.
- Why No Managed Node Groups?: Karpenter dynamically provisions nodes based on workload demands, making managed node groups unnecessary.


Resources Overview

The following resources are provisioned in the OpsFleet Dev Cluster:

# EKS Cluster

- Module: module.opsfleet_dev_eks_cluster

- Cluster Name: opsfleet-dev-cluster

- EKS Version: 1.32

- IAM Role: opsfleet_dev_cluster_iam_role

- Authentication Mode: API

- Node Pools: system, general-purpose

- VPC Configuration:

    - Private Access: Enabled

    - Public Access: Enabled

    - Subnets: Web Tier & Public Tier


# IAM Roles and Policies

EKS Cluster IAM Role (opsfleet_dev_cluster_iam_role)

This role is assigned to the EKS cluster and has the following policy attachments:

- AmazonEKSClusterPolicy - Grants permissions required for managing EKS clusters.

- AmazonEKSComputePolicy - Grants permissions for compute resources within EKS.

- AmazonEKSBlockStoragePolicy - Grants access to EBS volumes used by EKS nodes.

- AmazonEKSLoadBalancingPolicy - Enables integration with AWS load balancers.

- AmazonEKSNetworkingPolicy - Provides networking permissions for EKS.

- AmazonEC2ContainerRegistryReadOnly - Grants read-only access to Amazon Elastic Container Registry (ECR).

- AmazonEKS_CNI_Policy - Allows Amazon VPC CNI plugin to manage networking resources.


# EKS Worker Node IAM Role (opsfleet_dev_cluster_node_iam_role)

This role is assigned to worker nodes within the EKS cluster and has the following policy attachments:

- AmazonEKSWorkerNodeMinimalPolicy - Grants minimal permissions for EKS worker nodes.

- AmazonEC2ContainerRegistryPullOnly - Allows worker nodes to pull container images from Amazon ECR.


# IAM User Policy

A test IAM user (root-test) is defined with permissions to assume roles.

Networking Configuration

- Private Subnet: subnet-0a31a283e73e70d4c (Web Tier Subnet)

- Public Subnet: subnet-0d2fec448b24ebd69 (Public Tier Subnet)

- Elastic Load Balancing: Enabled



# Terraform Backend Configuration

- State Management: AWS S3 (espace-project-store bucket)

- State File Key: opsfleet/infrastructure/opsfleet_dev_cluster_tf_state

- Region: eu-west-1


# Providers Used

- AWS (HashiCorp aws provider)

- AWS Cloud Control API (awscc provider)

- Kubernetes (kubernetes provider)

- Helm (helm provider)

- Kubectl (kubectl provider)



# Deployment Steps
1. Clone the repository:
```sh
git clone https://github.com/your-repo/opsfleet-dev-cluster.git
cd opsfleet-dev-cluster

``` 

2. Initialize Terraform:
```sh
terraform init
```


3. Validate the configuration:
```sh
terraform validate
```

4. Plan the deployment:
```sh
terraform plan
```

5. Apply the configuration:
```sh
terraform apply -auto-approve
```


# Accessing the Cluster
6. Kubernetes Context Setup:
```sh
aws eks update-kubeconfig --region eu-west-1 --name opsfleet-dev-cluster
```

7. Verify Cluster Status:
```sh
kubectl get nodes
```