variable "vpc_id" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "cidr_block" {
  type        = string
  description = "Default VPC Name "
  default     = "10.0.1.0/24"
}

variable "subnet_name" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
}



variable "availability_zone" {
  type        = string
  description = "Default VPC Name "
  default     = "us-west-1c"
}


variable "map_public_ip_on_launch" {
  type        = bool
  description = "Default Company"
  default = false
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