variable "name" {
  type        = string
  description = "Default Route53 A Record Name"
  default     = "www.example.com"
}


variable "type" {
  type        = string
  description = "Default Route53 A Record  Type"
  default     = "A"
}

variable "ttl" {
  type        = number
  description = "Default Route53 A Record Port"
  default     = 300
}


variable "elastic_pip" {
  type        = string
  description = "Default Route53 A Record Elastic Public IP "
  default     = "5"
}

variable "zone_id" {
  type        = string
  description = "Default Route53 A Record Zone ID "
  default     = "5"
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