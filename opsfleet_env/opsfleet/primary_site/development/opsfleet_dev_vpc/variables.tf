
# Definition of the Opsfleet Subnets to create in  OpsFleet Dev Environment(us-east-1)

# Company Name Variable
variable "company_name" {
  description = "Company Short Name"
  default = "opsfleet"
}

# Company Name Variable
variable "company_fullname" {
  description = "Company Full Name"
  default = "OpsFleet"
}

# Current Environment Variable
variable "env" {
  description = "Current Environment"
  default = "dev"
}

variable "default_region" {
  description = ""
  default = "eu-west-1"
}