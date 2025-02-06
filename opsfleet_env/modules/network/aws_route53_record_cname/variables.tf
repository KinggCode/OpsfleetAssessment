variable "zone_id" {
  type        = string
  description = "Default Route53 Zone ID"
  default     = "www"
}

variable "name" {
  type        = string
  description = "Default Route53 Name"
  default     = "www"
}


variable "type" {
  type        = string
  description = "Default Route53 Type"
  default     = "CNAME"
}

variable "ttl" {
  type        = number
  description = "Default Route53 TTL"
  default     = 5
}


variable "policy_weight" {
  type        = string
  description = "Default Route53 Policy Weight"
  default     = 10
}

variable "set_identifier" {
  type        = string
  description = "Default Route53 Set Identifier"
  default     = "dev"
}

variable "records" {
  type        = list(string)
  description = "Default Route53 Record"
  default     = ["dev.example.com"]
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