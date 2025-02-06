variable "allow_overwrite" {
  type        = bool
  description = "Default Route53 Zone ID"
  default     = true
}

variable "zone_id" {
  type        = string
  description = "Default Route53 Zone ID"
  default     = "default"
}

variable "name" {
  type        = string
  description = "Default Route53 Name"
  default     = "test.example.com"
}

variable "ttl" {
  type        = number
  description = "Default Route53 TTL"
  default     = 172800
}

variable "type" {
  type        = string
  description = "Default Route53 Type"
  default     = "NS"
}

variable "ns_records" {
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