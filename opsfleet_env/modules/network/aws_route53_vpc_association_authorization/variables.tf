variable "vpc_id" {
  type        = bool
  description = "Default Route53 VPC ID"
  default     = true
}

variable "zone_id" {
  type        = string
  description = "Default Route53 Zone ID"
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