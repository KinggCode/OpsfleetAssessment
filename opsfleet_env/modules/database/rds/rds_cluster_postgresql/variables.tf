# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

variable "cluster_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-aurora-cluster-demo"
}

# AMI Name
variable "availability_zones" {
  type        = list(string)
  description = "Default AMI Name"
  default     = ["eu-west-1c"]
}

variable "db_name" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-db"
}

variable "master_username" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleetAdmin"
}

variable "master_password" {
  type        = string
  description = "Default Instance Type."
  default     = "Blessed2023#"
}

variable "backup_retention_period" {
  type        = number
  description = "Default Subnet ID"
  default     = 30
}

variable "performance_insights_retention_period" {
  type        = number
  description = "Default Subnet ID"
  default     = 7
}

variable "preferred_backup_window" {
  type        = string
  description = "Default Security Group ID"
  default     =  "07:00-09:00"
}


variable "instance_class" {
  type        = string
  description = "Default Security Group ID"
  default     =  "db.r4.large"
}
variable "performance_insights_enabled" {
  type        = bool
  description = "Default Security Group ID"
  default     =  true
}
variable "publicly_accessible" {
  type        = bool
  description = "Default Security Group ID"
  default     =  true
}
variable "db_subnet" {
  type        = string
  description = "Default Security Group ID"
  default     =  "default"
}


###############################################################
variable "engine" {
  type        = string
  description = "Default Core Count."
  default     = "aurora-postgresql"
}
variable "core_count" {
  type        = number
  description = "Default Core Count."
  default     = 2
}


###############################################################


variable "db_subnet_group_name" {
  type        = string
  description = "Default Core Count."
  default     = "opsfleet"
}


variable "subnet_ids" {
  type        = list(string)
  description = "Default Core Count."
  default     = ["default"]
}


variable "security_group_ids" {
  type        = list(string)
  description = "Default Core Count."
  default     = ["default"]
}


