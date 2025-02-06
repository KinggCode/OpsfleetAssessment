# OpsFleet Dev VPC
################################################################
data "aws_vpc" "opsfleet_dev_vpc" {
  id = var.opsfleet_dev_vpc
}


# OpsFleet Dev Subnets
################################################################

data "aws_subnet" "opsfleet_dev_web_subnet" {
  id = var.opsfleet_dev_web_subnet
}

data "aws_subnet" "opsfleet_dev_data_subnet" {
  id = var.opsfleet_dev_data_subnet
}

data "aws_subnet" "opsfleet_dev_mgt_subnet" {
  id = var.opsfleet_dev_mgt_subnet
}
