# Provider Option
variable "provider_option" {
  type        = string
  description = "Default Provider for resource."
  default = "default"
}


# Transit  Description
variable "transit_gateway_description" {
  type        = string
  description = "Default Description for resource."
  default = "default"
}


# Amazon Side ASN
variable "amazon_side_asn" {
  type        = string
  description = "Default Amazon Side ASN for resource."
  default = "default"
}


# Route Table Association
variable "default_route_table_association" {
  type        = string
  description = "Default Route Table Association for resource."
  default = "disable"
}


# Route Table Propagation
variable "default_route_table_propagation" {
  type        = string
  description = "Default Default Route Table Propagation for resource."
  default = "disable"
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
