variable "cidr_collection_id" {
  type        = string
  description = "Default Route53 CIDR Collection ID"
  default     = "collection-1"
}

variable "cidr_collection_name" {
  type        = string
  description = "Default Route53 CIDR Collection Name"
  default     = "office"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "Default Route53 CIDR Blocks"
  default     = ["200.5.3.0/24", "200.6.3.0/24"]
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