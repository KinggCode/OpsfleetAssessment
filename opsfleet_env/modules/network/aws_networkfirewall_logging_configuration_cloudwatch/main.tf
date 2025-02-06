resource "aws_networkfirewall_logging_configuration" "default_networkfirewall_logging_configuration_cw" {
  firewall_arn = var.firewall_arn
  logging_configuration {
    log_destination_config {
      log_destination = {
        logGroup = var.log_group_name
      }
      log_destination_type = "${var.log_destination_type}"
      log_type             = "${var.log_type}"
    }
  }
  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}