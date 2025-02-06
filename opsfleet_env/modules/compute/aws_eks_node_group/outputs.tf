# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/compute/outputs.tf ---

output "default_eks_node_group" {
  value       = aws_eks_node_group.default_eks_node_group
  description = "List of instances created."
}