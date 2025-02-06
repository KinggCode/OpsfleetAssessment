# OpsFleet Development Infrastructure

# Overview

The OpsFleet Development environment consists of multiple infrastructure components that work together to manage Kubernetes workloads, networking, and access control. Below is a detailed breakdown of the key components and their associated resources.

# Directory Structure and Resources

1. OpsFleet Dev Cluster

This module provisions the Amazon EKS (Elastic Kubernetes Service) cluster, which serves as the primary orchestrator for containerized applications.

- Resources:

    - AWS EKS Cluster (aws_eks_cluster)

    - AWS IAM Role for EKS Cluster (aws_iam_role)

    - AWS Security Groups for Cluster Control Plane (aws_security_group)

2. OpsFleet Dev Cluster Access Entry

This module defines IAM roles and user access policies for developers and administrators to interact with the EKS cluster.

- Resources:

    - IAM Roles (aws_iam_role)

    - IAM Policies (aws_iam_policy)

    - AWS IAM User (aws_iam_user)

    - EKS Access Entries (aws_eks_access_entry)

3. OpsFleet Dev Karpenter

Karpenter is a Kubernetes cluster autoscaler that provisions worker nodes dynamically based on workloads.

- Resources:

    - IAM Policy for Karpenter (aws_iam_policy)

    - IAM Role for Karpenter (aws_iam_role)

    - Karpenter Namespace in Kubernetes (kubernetes_namespace)

    - Karpenter Helm Chart (helm_release)

    - Provisioner Configuration (provisioner.yaml)

4. OpsFleet Dev Node Group

This module manages the worker nodes that run workloads in the EKS cluster.

- Resources:

    - AWS EKS Node Group (aws_eks_node_group)

    - IAM Role for Node Group (aws_iam_role)

    - IAM Policy Attachments for Node Group (aws_iam_role_policy_attachment)

    - EC2 Instances for Nodes (aws_instance)

    - Subnet Associations (aws_subnet)

5. OpsFleet Dev Server

This module provisions server infrastructure that may be required outside of Kubernetes.

- Resources:

    - EC2 Instances (aws_instance)

    - IAM Roles (aws_iam_role)

    - Security Groups (aws_security_group)

6. OpsFleet Dev VPC

The Virtual Private Cloud (VPC) manages networking and security for the OpsFleet environment.

- Resources:

    - AWS VPC (aws_vpc)

    - AWS Subnets (aws_subnet)

    - Route Tables (aws_route_table)

    - Internet Gateway (aws_internet_gateway)

    - NAT Gateway (aws_nat_gateway)

# Summary

Each module in the OpsFleet Development environment plays a crucial role in ensuring a scalable, secure, and high-performance infrastructure for Kubernetes-based workloads. This setup supports both automated scaling (via Karpenter) and controlled access (via IAM policies) while leveraging AWS networking capabilities for optimized connectivity.

For any modifications or troubleshooting, developers should refer to the Terraform state files and logs stored in the configured backend (AWS S3).

