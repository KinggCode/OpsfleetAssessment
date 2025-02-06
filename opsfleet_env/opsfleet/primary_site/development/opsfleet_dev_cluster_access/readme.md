# OpsFleet Dev Access Entry

# Overview

The opsfleet-dev-access-entry Terraform configuration provisions access entries for users to interact with the opsfleet-dev-cluster EKS cluster. This includes defining IAM roles, user permissions, and Kubernetes group assignments.

# Resources Provisioned

# 1. EKS Access Entry for Test User

- Module: opsfleet_root_test_eks_access_entry

- Cluster Name: opsfleet-dev-cluster

- User: eugene-parker

- Kubernetes Groups:

    - opsfleet_admin

    - opsfleet_developers

- Type: STANDARD

- IAM Role: opsfleet_dev_cluster-role

# 2. EKS Access Entry for Admin (Root)

- Module: opsfleet_root_eks_access_entry

- Cluster Name: opsfleet-dev-cluster

- User: root

- Kubernetes Groups:

    - opsfleet_admin

    - opsfleet_developers

- Type: STANDARD

- IAM Role: opsfleet_dev_cluster-role

# 3. IAM User Data Source

- User: root-test

- Used for: Access control setup for opsfleet-dev-cluster

# 4. IAM Role Data Source

Role Name: opsfleet_dev_cluster-role

Purpose: Defines the IAM role used for managing access to the cluster.

# 5. EKS Cluster Data Source

- Cluster Name: opsfleet-dev-cluster

- Purpose: Fetches cluster details to assign IAM roles and permissions accordingly.

- Providers

- AWS Provider (version >= 4.28.0)

- AWSCC Provider (version >= 0.30.0)

- Kubectl Provider (version >= 1.14.0)


# State Management

- S3 Bucket: espace-project-store

- State Key: opsfleet/infrastructure/opsfleet_dev_cluster_identity_tf_state

- Region: eu-west-1



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

# Notes

- This module ensures that the specified IAM users have the necessary access to manage and interact with the opsfleet-dev-cluster EKS cluster.

- Ensure that IAM users exist before applying the Terraform configuration to prevent errors.

- Use appropriate security measures to manage and monitor IAM access entries.