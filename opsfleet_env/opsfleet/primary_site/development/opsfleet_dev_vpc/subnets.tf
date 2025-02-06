################################################################################
# Opsfleet - Dev Subnets Configurations
################################################################################

# Ops Dev Web Sub Network
module "opsfleet_web_subnet"{
    source = "../../../../modules/network/aws_subnet"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    cidr_block = "10.6.1.0/24"
    subnet_name =  "${var.company_name}-${var.env}-web-tier"
    map_public_ip_on_launch = true
    availability_zone = "eu-west-1a"
    env = "${var.env}"
    company = "${var.company_name}"
}

# Ops Dev Data Sub Network
module "opsfleet_data_subnet"{
    source = "../../../../modules/network/aws_subnet"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    cidr_block = "10.6.2.0/24"
    subnet_name =  "${var.company_name}-${var.env}-data-tier"
    availability_zone = "eu-west-1b"
    env = "${var.env}"
    company = "${var.company_name}"
}

# Ops Dev Prod Sub Network
module "opsfleet_public_subnet"{
    source = "../../../../modules/network/aws_subnet"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    cidr_block = "10.6.3.0/24"
    subnet_name =  "${var.company_name}-${var.env}-public-tier"
    map_public_ip_on_launch = true
    availability_zone = "eu-west-1c"
    env = "${var.env}"
    company = "${var.company_name}"
}


# Ops Dev  Mgt Sub Network
module "opsfleet_mgt_subnet"{
    source = "../../../../modules/network/aws_subnet"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    cidr_block = "10.6.4.0/24"
    subnet_name =  "${var.company_name}-${var.env}-mgt-tier"
    availability_zone = "eu-west-1c"
    env = "${var.env}"
    company = "${var.company_name}"
}
