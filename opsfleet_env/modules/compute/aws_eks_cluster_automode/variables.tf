variable "cluster_name" {
  description = "Default EKS Cluster Name"
  default = "example"
}

variable "cluster_role_arn" {
  description = "Default EKS Cluster Role ARN"
  default = "example"
}

variable "cluster_version" {
  description = "Default EKS Cluster Name"
  default = "1.31"
}

variable "cluster_bootstrap_self_managed_addons" {
  description = "Default EKS Cluster Dependencies"
  default = false
}


variable "cluster_authentication_mode" {
  description = "Default Access Config Authentication Mode"
  default = "API_AND_CONFIG_MAP"
}

variable "cluster_compute_config_enabled" {
  description = "Default Config Enabled"
  default = true
}

variable "cluster_compute_config_node_pools" {
  type = list(string)
  description = "Default Config Enabled"
  default = ["system"]
}

variable "node_pool_role_arn" {
  description = "Default EKS Cluster Role ARN"
  default = "example"
}

variable "cluster_network_config_elastic_load_balancing_enabled" {
  description = "Default Kuberenetes Network Config Elastic Load Balancing Enabled"
  default = true
}

variable "cluster_storage_block_storage_enabled" {
  description = "Default Storage Config Block Storage"
  default = true
}

# VPC Config Variables 
variable "cluster_vpc_subnets" {
  type = list(string)
  description = "Default EKS Cluster Subnet"
  default = []
}

variable "cluster_vpc_private_access" {
  description = "Default EKS Cluster Subnet"
  default = true
}

variable "cluster_vpc_public_access" {
  description = "Default EKS Cluster Subnet"
  default = true
}


variable "cluster_dependencies" {
  type = list(string)
  description = "Default EKS Cluster Dependencies"
  default = []
}





variable "env" {
  type        = string
  description = "Default Environment"
  default = "dev"
}

variable "company" {
  type        = string
  description = "Default Company"
  default = "opsfleet"
}