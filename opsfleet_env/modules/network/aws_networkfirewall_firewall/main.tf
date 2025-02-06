resource "aws_networkfirewall_firewall" "default_networkfirewall_firewall" {
  name                = "${var.firewall_name}"
  firewall_policy_arn = var.firewall_policy_arn
  vpc_id              = var.vpc_id
  subnet_mapping {
    subnet_id = var.subnet_id
  }

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}