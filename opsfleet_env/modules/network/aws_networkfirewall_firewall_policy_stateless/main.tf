resource "aws_networkfirewall_firewall_policy" "default_networkfirewall_firewall_policy" {
  name = "${var.policy_name}"

  firewall_policy {
    stateless_default_actions          = [var.stateless_default_actions]
    stateless_fragment_default_actions = [var.stateless_fragment_default_actions]
    stateless_rule_group_reference {
      priority     = var.network_rule_group_priority
      resource_arn = var.network_rule_group_arn
    }
  }

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}