resource "aws_networkfirewall_rule_group" "default_networkfirewall_rule_group_ip_access" {
  capacity    = var.networkfirewall_rule_group_capacity
  description = "${var.networkfirewall_rule_group_description}"
  name        = "${var.networkfirewall_rule_group_name}"
  type        = "${var.rule_type}"
  rule_group {
    rules_source {
      stateful_rule {

          action = "${var.action}"
          header {
            destination      = "${var.destination}"
            destination_port = "${var.destination_port}"
            protocol         = "${var.protocol}"
            direction        = "${var.direction}"
            source_port      = "${var.source_port}"
            source           = var.source_ip
          }
          rule_option {
            keyword  = "sid"
            settings = ["1"]
          }

      }
    }
  }

  tags = {
    Name = "permit HTTP from source"
    env = "${var.env}"
    company = "${var.company}"
  }
}