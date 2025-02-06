# module "opsfleet_vpc_private_endpoint" {
#   source = "../../../../../modules/network/aws_vpc_endpoint"
#   vpc_id = module.opsfleet_dev_vpc.default_vpc.id
#   service_name = "com.amazonaws.eu-west-1.ec2"
#   vpc_endpoint_type = "Interface"
# #   subnet_range = "10.6.1.0"
# #   subnet_id = module.opsfleet_web_subnet.default_subnet.id
#   subnet_ids = [module.opsfleet_web_subnet.default_subnet.id]
# }