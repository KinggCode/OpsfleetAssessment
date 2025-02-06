# Provider Option
variable "queue_id" {
  type        = string
  description = "Default Queue ID"
  default = "default"
}


# Transit  Description
variable "deadLetterTargetArn" {
  type        = string
  description = "Default Dead Letter Target ARN"
  default = "byQueue"
}

variable "maxReceiveCount" {
  type        = number
  description = "Default Max Receive Count ."
  default = 4
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
