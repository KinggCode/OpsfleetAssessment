
# Definition of the Opsfleet Subnets to create in  OpsFleet Dev Environment(us-east-1)

# Company Name Variable
variable "company_name" {
  description = "Company Short Name"
  default = "opsfleet"
}

# Company Name Variable
variable "company_fullname" {
  description = "Company Full Name"
  default = "Opsfleet"
}

# Current Environment Variable
variable "env" {
  description = "Current Environment"
  default = "dev"
}

variable "default_region" {
  description = ""
  default = "eu-west1"
}


variable "web_tier_subnet" {
  description = "Web Tier Subnet"
  default = "subnet-0a31a283e73e70d4c"
}

variable "public_tier_subnet" {
  description = "Public Tier Subnet"
  default = "subnet-0d2fec448b24ebd69"
}
