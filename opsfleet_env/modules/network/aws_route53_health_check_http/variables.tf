variable "fqdn" {
  type        = string
  description = "Default Route53 Health Check Fqdn"
  default     = "example.com"
}

variable "port" {
  type        = number
  description = "Default Route53 Health Check Port"
  default     = 80
}

variable "type" {
  type        = string
  description = "Default Route53 Health Check Type"
  default     = "HTTP"
}

variable "failure_threshold" {
  type        = string
  description = "Default Route53 Health Check Failure Threshold"
  default     = "5"
}

variable "request_interval" {
  type        = string
  description = "Default Route53 Health Check Request Internal"
  default     = "5"
}

variable "resource_path" {
  type        = string
  description = "Default Route53 Health Check Resource Path"
  default     = "/"
}


variable "health_check_name" {
  type        = string
  description = "Default Route53 Health Check Resource Path"
  default     = "default-health-check"
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