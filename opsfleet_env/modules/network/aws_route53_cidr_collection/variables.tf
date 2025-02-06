variable "cidr_collection" {
  type        = string
  description = "Default Route53 CIDR Collection"
  default     = "collection-1"
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