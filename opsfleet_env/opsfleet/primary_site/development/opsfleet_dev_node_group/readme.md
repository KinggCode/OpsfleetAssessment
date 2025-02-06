
# OpsFleet Dev Node Group Infrastructure

# Overview

The opsfleet-dev-node-group infrastructure is designed to provision and manage an Amazon EKS node group within the OpsFleet development environment. This setup ensures that worker nodes can efficiently run workloads while maintaining security and scalability.

# Resources

1. IAM Role for Node Group

- aws_iam_role.opsfleet_dev_eks_node_group_role: IAM role assigned to EKS worker nodes.

- Attached IAM policies:

    - AmazonEKSWorkerNodePolicy: Grants permissions for worker nodes.

    - AmazonEKS_CNI_Policy: Grants networking permissions for EKS CNI.

    - AmazonEC2ContainerRegistryReadOnly: Allows access to Amazon ECR images.

2. Amazon VPC and Subnets

    - aws_subnet.opsfleet_dev_web_tier: Web-tier subnet ID for EKS node group.

    -  aws_subnet.opsfleet_dev_public_tier: Public-tier subnet ID for EKS node group.

3. EKS Cluster Configuration

    - aws_eks_cluster.opsfleet_dev_cluster: Data source fetching cluster information.

    - aws_ssm_parameter.eks_ami_release_version: Retrieves the latest optimized Amazon Linux AMI for the cluster.

4. EKS Node Group Module

- module.opsfleet_dev_eks_node_group: Manages the EKS node group.

    - Uses SPOT instances for cost efficiency.

    - Instance types: t4g.medium, m6g.large.

    - Disk size: 50 GB.

    - Scaling configuration:

        - Desired: 2 nodes.

        - Maximum: 3 nodes.

        - Minimum: 1 node.

- Auto-update configuration allows one unavailable node during updates.

# Deployment and State Management

- Terraform backend stored in S3 bucket: espace-project-store.

- Terraform state file: opsfleet/infrastructure/opsfleet_dev_node_group_tf_state.



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


# Expected Outcome

Once deployed, the infrastructure will create an EKS node group within the specified cluster, ensuring efficient workload distribution and availability. Developers can use this setup for deploying and managing Kubernetes workloads in the development environment.

