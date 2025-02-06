# Opsfleet Dev Internet Gateway 
module "opsfleet_dev_igw"{
    source = "../../../../modules/network/aws_internet_gateway"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    env = "${var.env}"
    company = "${var.company_fullname}"
}
