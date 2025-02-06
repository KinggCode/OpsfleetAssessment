################################################################################
# Opsfleet - Dev Route Tables Configurations
################################################################################

# Opsfleet Dev Route Table
module "opsfleet_dev_route_table"{
    source = "../../../../modules/network/aws_route_table"
    vpc_id = module.opsfleet_dev_vpc.default_vpc.id
    env = "${var.env}"
    company = "${var.company_name}"
}

# Opsfleet Dev Route
module "opsfleet_dev_route"{
    source = "../../../../modules/network/aws_route"
    route_table_id = module.opsfleet_dev_route_table.default_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    egress_only_gateway_id = module.opsfleet_dev_igw.default_internet_gw.id
    env = "${var.env}"
    company = "${var.company_name}"
}



################################################################################
# Opsfleet - Dev Subnets Associations
################################################################################

# Ops Web Subnet -  Route Table  Associations
module "opsfleet_web_subnet_association"{
    source = "../../../../modules/network/aws_route_table_association"
    route_table_id = module.opsfleet_dev_route_table.default_route_table.id
    subnet_id = module.opsfleet_web_subnet.default_subnet.id
    env = "${var.env}"
    company = "${var.company_name}"
}

# Ops Mgt Subnet - Route Table Associations 
module "opsfleet_mgt_subnet_association"{
    source = "../../../../modules/network/aws_route_table_association"
    route_table_id = module.opsfleet_dev_route_table.default_route_table.id
    subnet_id = module.opsfleet_mgt_subnet.default_subnet.id
    env = "${var.env}"
    company = "${var.company_name}"
}

# Ops Mgt Subnet - Route Table Associations 
module "opsfleet_public_subnet_association"{
    source = "../../../../modules/network/aws_route_table_association"
    route_table_id = module.opsfleet_dev_route_table.default_route_table.id
    subnet_id = module.opsfleet_public_subnet.default_subnet.id
    env = "${var.env}"
    company = "${var.company_name}"
}
