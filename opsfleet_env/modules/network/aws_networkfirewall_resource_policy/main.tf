resource "aws_networkfirewall_resource_policy" "default_networkfirewall_resource_policy" {
  resource_arn = var.firewall_policy_arn
  # policy's Action element must include all of the following operations
  policy = "${var.policy}"
  
  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}