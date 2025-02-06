
# OpsFleet Dev Karpenter Infrastructure

# Overview

The opsfleet-dev-karpenter module is responsible for provisioning and managing Karpenter within the OpsFleet Dev Kubernetes cluster. Karpenter is an open-source node provisioning system that helps manage EC2 instances dynamically based on workload demands.

# Purpose: 
- Installs Karpenter in the EKS cluster using Helm.

# Key Configurations:
- namespace: Deploys Karpenter in a dedicated namespace.

- serviceAccount.annotations: Links the Karpenter service account to the IAM role.

- settings.aws: Configures Karpenter to work with the EKS cluster, using the default instance profile.

# Resources Provisioned

# 1. Karpenter IAM Role & Policies

- IAM Role (karpenter-role): This role is assumed by EC2 instances managed by Karpenter.

- IAM Policy (karpenter-policy): Grants necessary permissions for Karpenter to provision, manage, and terminate instances dynamically.

- IAM Instance Profile (opsfleet_dev_karpenter_profile): Binds the IAM role to EC2 instances provisioned by Karpenter.



# 2. Kubernetes Namespace & Helm Release

Namespace (karpenter): A dedicated Kubernetes namespace for deploying Karpenter.

Helm Release (karpenter): Installs Karpenter via Helm with configurations for the cluster and IAM role.

# 3. Karpenter Provisioner

- Defines instance provisioning rules, including:

- Allowed instance types: m6g.large, m5.large, c6g.large, c5.large

- Supported architectures: amd64, arm64

- Availability Zones: eu-west-1a, eu-west-1b, eu-west-1c

- Security group and subnet settings

- Automatic node expiration (TTL of 30 seconds after being idle)

# 4. Kubernetes & Helm Providers

Configured to use local kubeconfig for applying Kubernetes resources and deploying Helm charts.

# 5. Terraform Backend & State Management

- Uses an S3 backend (espace-project-store) to store the Terraform state file.

# Dependencies

- An existing EKS cluster (opsfleet-dev-cluster) is required for Karpenter to function properly.

- The IAM policies must be correctly attached to allow EC2 instance provisioning.

- The specified security groups and subnets should be valid within the VPC (vpc-06f7a571cfcef0a0c).

# Expected Behavior

- When workloads require additional compute resources, Karpenter will automatically provision new EC2 instances matching the specified requirements.

- If nodes become idle for 30 seconds, they will be automatically terminated.

- Helm will manage the deployment and lifecycle of Karpenter within the cluster.

# How to Apply

1. Ensure Terraform is installed and configured for AWS.

2. Run terraform init to initialize the module.

3. Run terraform plan to review changes.

4. Run terraform apply to deploy Karpenter.



# Deployment Steps

1. Initialize Terraform:
```sh
terraform init
```


2. Validate the configuration:
```sh
terraform validate
```

3. Plan the deployment:
```sh
terraform plan
```

4. Apply the configuration:
```sh
terraform apply -auto-approve
```

# Additional Notes

- The Helm chart has a timeout of 10 minutes to ensure stability during deployment.

- Security groups and subnets must be correctly configured to allow communication between Karpenter and the cluster.

- The IAM policy must have the correct permissions for EC2 and EKS operations.

