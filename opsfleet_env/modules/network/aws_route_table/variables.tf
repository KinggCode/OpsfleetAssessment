variable "vpc_id" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}



variable "vpc_name" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
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