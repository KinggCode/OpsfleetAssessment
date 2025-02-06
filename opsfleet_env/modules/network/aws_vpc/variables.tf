variable "vpc_name" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "cidr_block" {
  type        = string
  description = "Default VPC Name "
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
}


variable "enable_dns_hostnames" {
  type        = bool
  description = "Default Enable DNS Hostnames"
  default     = false
}


variable "enable_dns_support" {
  type        = bool
  description = "Default Enable DNS Support"
  default     = false
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