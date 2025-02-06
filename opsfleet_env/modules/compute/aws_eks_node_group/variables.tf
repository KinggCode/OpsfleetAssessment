variable "cluster_name" {
  description = "Default EKS Cluster Name"
  default = ""
}

variable "cluster_node_group_name" {
  description = "Default EKS Cluster Name"
  default = ""
}

variable "cluster_role_arn" {
  description = "Default EKS Cluster Role ARN"
  default = ""
}


# VPC Config Variables 
variable "cluster_vpc_subnets" {
  type = list(string)
  description = "Default EKS Cluster Subnet"
  default = []
}

variable "cluster_version" {
  description = "Default EKS Cluster Version"
  default = ""
}

variable "cluster_release_version" {
  description = "Default EKS Cluster Release Version"
  default = ""
}


variable "cluster_capacity_type" {
  description = "Default EKS Cluster Role ARN"
  default = "SPOT"
}

variable "cluster_instance_types" {
  type = list(string)
  description = "Default EKS Cluster Subnet"
  # default =  ["t4g.medium", "t3.medium", "m6g.large", "m5.large"]
  default =  ["t4g.medium"]
}

variable "cluster_node_disk_size" {
  description = "Default Node Disk Size"
  default = 50
}

variable "scaling_config_desired_size" {
  description = "Default Scaling Config Desired Size"
  default = 1
}

variable "scaling_config_max_size" {
  description = "Default Scaling Config Max Size"
  default = 2
}

variable "scaling_config_min_size" {
  description = "Default Scaling Config Min Size"
  default = 1
}


variable "update_config_max_unavailable" {
  description = "Default Update Config Max Unavailable"
  default = 1
}


variable "ami_type" {
  type = string
  description = "Default EKS Cluster Dependencies"
  default = "AL2_ARM_64"
}


variable "taint_key" {
  type = string
  description = "Default EKS Cluster Dependencies"
  default = "arch"
}

variable "taint_value" {
  type = string
  description = "Default EKS Cluster Dependencies"
  default = "arm64"
}

variable "taint_effect" {
  type = string
  description = "Default EKS Cluster Dependencies"
  default = "NO_SCHEDULE"
}


variable "cluster_bootstrap_self_managed_addons" {
  description = "Default EKS Cluster Dependencies"
  default = false
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