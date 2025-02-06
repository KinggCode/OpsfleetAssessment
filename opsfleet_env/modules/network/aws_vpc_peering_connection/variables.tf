variable "peering_connection_name" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "owner_id" {
  type        = string
  description = "Default Owner ID "
  default     = "10.0.0.0/16"
}

variable "peer_vpc_id" {
  type        = string
  description = "Default Peer VPC ID "
  default     = "10.0.0.0/16"
}

variable "vpc_id" {
  type        = string
  description = "Default VPC ID "
  default     = "10.0.0.0/16"
}

variable "auto_accept" {
  type        = bool
  description = "Default AUTO Accept "
  default     = true
}


variable "allow_remote_vpc_dns_resolution" {
  type        = bool
  description = "Default AUTO Accept "
  default     = true
}




# General Variables #
########################################################################
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
