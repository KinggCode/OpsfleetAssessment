variable "subnets" {
  type        = list(string)
  description = "Default VPC Name "
  default     = []
}


variable "subnet_group_name" {
  type        = string
  description = "Default VPC Name "
  default     = ""
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