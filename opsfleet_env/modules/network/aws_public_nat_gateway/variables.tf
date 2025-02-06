variable "allocation_id" {
  type        = string
  description = "Default Aloocation ID"
  default     = "onepan-prod-vpc"
}

variable "subnet_id" {
  type        = string
  description = "Default Subnet ID"
  default     = "default"
}


variable "nat_gateway_name" {
  type        = string
  description = "Default Nat Gateway Name "
  default     = "onepan-prod-vpc"
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