variable "vpc_id" {
  type        = string
  description = "Default Route53 VPC ID"
  default     = "default"
}

variable "zone_name" {
  type        = string
  description = "Default Route53 Zone ID"
  default     = "example.com"
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