variable "subnet_id" {
  type        = string
  description = "Default VPC Name "
  default     = "onepan-prod-vpc"
}

variable "security_group_id" {
  type        = list(string)
  description = "Default VPC Name "
  default     = ["default"]
}

variable "private_ips_id" {
  type        = list(string)
  description = "Default VPC Name "
  default     = ["10.0.0.50"]
}

variable "instance_id" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
}


variable "device_index" {
  type        = number
  description = "Default VPC Name "
  default     = 1
}
