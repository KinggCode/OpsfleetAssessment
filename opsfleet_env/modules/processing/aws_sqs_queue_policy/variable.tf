# Provider Option
variable "queue_id" {
  type        = string
  description = "Default Queue ID"
  default = "default"
}


# Transit  Description
variable "policy_json" {
  type        = bool
  description = "Default Policy Json."
  default = true
}


# Amazon Side ASN
variable "content_based_deduplication" {
  type        = bool
  description = "Default Content Based Deduplication."
  default = true
}

variable "sqs_managed_sse_enabled" {
  type        = bool
  description = "Default Content Based Deduplication."
  default = true
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
