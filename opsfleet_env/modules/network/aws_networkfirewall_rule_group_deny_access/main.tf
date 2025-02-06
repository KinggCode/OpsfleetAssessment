resource "aws_networkfirewall_rule_group" "default_networkfirewall_rule_group" {
  capacity = var.networkfirewall_rule_group_capacity
  name     = "${var.networkfirewall_rule_group_name}"
  type     = "${var.rule_type}"
  rule_group {
    rules_source {
      rules_source_list {
        generated_rules_type = "${var.rules_source_list_rule_type}"
        target_types         = ["${var.rules_source_list_rule_target_type}"]
        targets              = ["${var.rules_source_list_rule_targets}"]
      }
    }
  }

   tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}