variable "subnet_id" {
  type        = string
  description = "Default Subnet ID "
  default     = "onepan-prod-vpc"
}



variable "route_table_id" {
  type        = string
  description = "Default Route Table ID"
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