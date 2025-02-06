resource "aws_networkfirewall_logging_configuration" "default_networkfirewall_logging_configuration_s3" {
  firewall_arn = var.firewall_arn
  logging_configuration {
    log_destination_config {
      log_destination = {
        bucketName = var.bucket_name
        prefix     = "${var.prefix}"
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