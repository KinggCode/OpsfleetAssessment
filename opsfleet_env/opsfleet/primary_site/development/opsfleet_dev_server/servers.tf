############################################################################################
#  Begin OpsFleet  dev Server Configurations
############################################################################################

# OpsFleet  dev Server Key
############################################################################################
resource "aws_key_pair" "opsfleet_server_key" {
  key_name   = "${var.company}-${var.env}-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5W+PfxyDT2ObVBWfHkRN4LweIw1jpMlsY/yHyUO6fqMQYjaVCva1WyARom1BEYRgOD94s9Mdju1g6rR30K60yaR3535Vjnd72PdwkdkBuKGlfb6HGrnAJ1znUyUbc/mZGUJWS0CWT/0hdQWG1XwuVs8Spl21X5LmNI4kp1aGxM8jw8TX8cwubgYKvn9NtYXZtEUsaJOGfODP0TykFZ/R3m5w9mcnkw9uQKk7XrSA1OFBMSIIw66TO655IRN9IVPIqzBiSDUO1HiAqh2BqLjSUKF18Iv/fhhO/+h0DHWkXNEDtjMClp6sXSoyDAZFt8G2zV/6zWJOA+tZHRLh+65iMNcnnBt8bbjeic1eOVdQvzhX7/Ld7XlKPZYLWIjoA4al5tDbbxglhuVgoiED+wDZxGcT/emrpktaZ0xIy04KkJ0G2p9Tnw+R91bnkouK62HT4wdWrAVDmLIpKfQTMQYwHYJIxTrc+RasMvcKAkli9lWXrhMfgN8apOJeVgU3x9mE= eugeneparker@Ones-MBP"
}

# OpsFleet  Dev Server Security Group Rules
############################################################################################
module "opsfleet_dev_server_sg" {
  source = "../../../../modules/network/aws_security_group"
  security_group_name = "${var.company}_${var.env}_allow_tls"
  security_group_description = "Allow HTTPS Inbound Traffic to opsfleet dev Server"
  vpc_id = "${data.aws_vpc.opsfleet_dev_vpc.id}"

  ingress_description = "OpsFleet  dev Server TLS from VPC"
  ingress_from_port = 443
  ingress_to_port = 443
  ingress_protocol = "tcp"
  ingress_vpc_cidr_block = ["0.0.0.0/0"]


  egress_from_port = 0
  egress_to_port = 0
  egress_protocol = "-1"
  egress_vpc_cidr_block = ["0.0.0.0/0"]
}

module "opsfleet_dev_sg_rule" {
  source = "../../../../modules/network/aws_vpc_security_group_ingress_rule"
  security_group_id = module.opsfleet_dev_server_sg.default_security_group.id
  description = "Allow SSH Inbound Traffic to opsfleet dev Server - SSH"
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = "22"
  to_port = "22"
}


module "opsfleet_dev_sg_rule_2" {
  source = "../../../../modules/network/aws_vpc_security_group_ingress_rule"
  security_group_id = module.opsfleet_dev_server_sg.default_security_group.id
  description = "Allow HTTP Inbound Traffic to opsfleet dev Server - HTTP"
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = "80"
  to_port = "80"
}

module "opsfleet_dev_sg_rule_3" {
  source = "../../../../modules/network/aws_vpc_security_group_ingress_rule"
  security_group_id = module.opsfleet_dev_server_sg.default_security_group.id
  description = "Allow HTTP Inbound Traffic to opsfleet dev Server - API Dashboard"
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = "9000"
  to_port = "9000"
}

module "opsfleet_dev_sg_rule_4" {
  source = "../../../../modules/network/aws_vpc_security_group_ingress_rule"
  security_group_id = module.opsfleet_dev_server_sg.default_security_group.id
  description = "Allow HTTP Inbound Traffic to opsfleet dev Server - Website"
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = "3000"
  to_port = "3000"
}


# OpsFleet  development Server
############################################################################################
module "opsfleet_dev_server" {
  source = "../../../../modules/compute/aws_instance"
  instance_name = "${var.company}-${var.env}-server"
  key_name                 = aws_key_pair.opsfleet_server_key.key_name
  associate_public_ip_address = true 
  ami_id = data.aws_ami.ubuntu.id
  instance_type = "t2.medium"
  subnet_id = "${data.aws_subnet.opsfleet_dev_web_subnet.id}"
  instance_profile = "${module.opsfleet_dev_server_profile.default_instance_profile.name}"
  monitoring = true 
  security_groups = [module.opsfleet_dev_server_sg.default_security_group.id]

  http_endpoint = "enabled"
  http_tokens = "required"
  instance_metadata_tags = "enabled"

  encrypted = true
  delete_on_termination = true
}


############################################################################################
# End of  OpsFleet  development Environment
############################################################################################