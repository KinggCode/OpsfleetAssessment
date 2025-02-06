variable "vpc_id" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "cidr_block" {
  type        = string
  description = "Default VPC Name "
  default     = "172.2.0.0/16"
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