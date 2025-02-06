# Provider Option
variable "queue_id" {
  type        = string
  description = "Default Queue ID"
  default = "default"
}


# Transit  Description
variable "redrivePermission" {
  type        = string
  description = "Default Policy Json."
  default = "byQueue"
}

variable "sourceQueueArns" {
  type        = list(string)
  description = "Default Source Queue ARN."
  default = ["default"]
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
