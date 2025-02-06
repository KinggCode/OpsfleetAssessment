################################################################################
# Opsfleet - Dev Network Environment
################################################################################

# Opsfleet Dev VPC 
module "opsfleet_dev_vpc" {
    source = "../../../../modules/network/aws_vpc"
    cidr_block = "10.6.0.0/16"
    vpc_name = "${var.company_name}-${var.env}-vnet"
    instance_tenancy = "default"
    enable_dns_hostnames = true 
    enable_dns_support = true
    env = "${var.env}"
    company = "${var.company_fullname}"
}

