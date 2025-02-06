# OpsFleet Inc. All Rights Reserved.

# ---- root/variables.tf ----- 

variable "cluster_id" {
  type        = string
  description = "Default AMI Name"
  default     = "opsfleet-aurora-cluster-demo"
}

variable "snapshot_identifier" {
  type        = string
  description = "Default AMI Name"
  default     = "resourcetestsnapshot1234"
}


###############################################################
variable "core_count" {
  type        = number
  description = "Default Core Count."
  default     = 2
}
