
variable "security_group_id" {
  type        = string
  description = "Default Security Group ID "
  default     = "default"
}

variable "cidr_ipv4" {
  type        = string
  description = "Default  CIDR IPV4 "
  default     = "10.0.0.0/8"
}

variable "from_port" {
  type        = number
  description = "Default From Port"
  default     = 80
}

variable "ip_protocol" {
  type        = bool
  description = "Default Tcpp "
  default     = "tcp"
}


variable "to_port" {
  type        = number
  description = "Default AUTO Accept "
  default     = 8080
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
