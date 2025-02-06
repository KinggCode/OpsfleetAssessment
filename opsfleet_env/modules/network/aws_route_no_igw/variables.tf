variable "route_table_id" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "destination_cidr_block" {
  type        = string
  description = "Default Destination IPV6 CIDR Block"
  default     = "::/0"
}


variable "egress_only_gateway_id" {
  type        = string
  description = "Default VPC Name "
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