# Provider Option
variable "queue_name" {
  type        = string
  description = "Default Queue Name"
  default = "terraform-example-queue.fifo"
}


# Transit  Description
variable "fifo_queue" {
  type        = bool
  description = "Default FIFO Queue."
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
