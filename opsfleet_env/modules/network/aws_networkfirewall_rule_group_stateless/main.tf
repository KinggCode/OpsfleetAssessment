resource "aws_networkfirewall_rule_group" "default_networkfirewall_rule_group_stateless" {
  description = "${ var.networkfirewall_rule_group_description}"
  capacity    = var.networkfirewall_rule_group_capacity
  name        = "${var.networkfirewall_rule_group_name}"
  type        = "${var.rule_type}"
  rule_group {
    rules_source {
      stateless_rules_and_custom_actions {
        custom_action {
          action_definition {
            publish_metric_action {
              dimension {
                value = "${var.dimension_value}"
              }
            }
          }
          action_name = "${var.action_name}"
        }
        stateless_rule {
          priority = var.priority
          rule_definition {
            actions = var.actions
            match_attributes {
              source {
                address_definition = "${var.source_address_definition}"
              }
              source_port {
                from_port = var.source_from_port
                to_port   = var.source_to_port
              }
              destination {
                address_definition = "${var.destination_address_definition}"
              }
              destination_port {
                from_port = var.destination_from_port
                to_port   = var.destination_to_port
              }
              protocols = [var.protocol]
              tcp_flag {
                flags = var.flags
                masks = var.masks
              }
            }
          }
        }
      }
    }
  }

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}