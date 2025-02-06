variable "vpc_id" {
  type        = string
  description = "Default VPC ID "
  default     = ""
}

variable "service_name" {
  type        = string
  description = "Default VPC Service Endpoint"
  default     = "com.amazonaws.us-west-2.ec2"
}

variable "vpc_endpoint_type" {
  type        = string
  description = "Default VPC Endpoint Type"
  default     = "Interface"
}


variable "subnet_range" {
  type        = string
  description = "Default Subnet Range"
  default     = "10.0.1.10"
}


variable "subnet_id" {
  type        = string
  description = "Default Subnet ID"
  default     = "10.0.1.10"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Default Subnet IDs"
  default     = []
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