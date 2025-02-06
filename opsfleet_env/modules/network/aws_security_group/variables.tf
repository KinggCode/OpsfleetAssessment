variable "security_group_name" {
  type        = string
  description = "Default Security Name Name "
  default     = "allow_tls"
}

variable "security_group_description" {
  type        = string
  description = "Default Security Group Description "
  default     = "Allow TLS inbound traffic"
}

variable "vpc_id" {
  type        = string
  description = "Default VPC Name "
  default     = "default"
}



variable "ingress_description" {
  type        = string
  description = "Default Secruity Group Ingress Description"
  default     = "TLS from VPC"
}


variable "ingress_from_port" {
  type        = number
  description = "Default Secruity Group Ingress From port"
  default     = 443
}


variable "ingress_to_port" {
  type        = number
  description = "Secruity Group Ingress To port"
  default     = 443
}

variable "ingress_protocol" {
  type        = string
  description = "Secruity Group Ingress Protocol"
  default     = "tcp"
}

variable "ingress_vpc_cidr_block" {
  type        = list(string)
  description = "Default VPC Name "
  default     = ["default"]
}



####################################################################################
variable "egress_from_port" {
  type        = number
  description = "Default Secruity Group Ingress From port"
  default     = 0
}


variable "egress_to_port" {
  type        = number
  description = "Secruity Group Ingress To port"
  default     = 0
}

variable "egress_protocol" {
  type        = string
  description = "Secruity Group Ingress Protocol"
  default     = "-1"
}

variable "egress_vpc_cidr_block" {
  type        = list(string)
  description = "Default VPC Name "
  default     = ["0.0.0.0/0"]
}