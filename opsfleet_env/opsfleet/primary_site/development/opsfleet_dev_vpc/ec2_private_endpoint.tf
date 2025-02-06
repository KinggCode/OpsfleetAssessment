module "opsfleet_ecr_private_endpoint" {
  source = "../../../../modules/network/aws_ec2_instance_connect_endpoint"
  subnet_id = module.opsfleet_web_subnet.default_subnet.id
  company = "demo"
  env = "dev"
}