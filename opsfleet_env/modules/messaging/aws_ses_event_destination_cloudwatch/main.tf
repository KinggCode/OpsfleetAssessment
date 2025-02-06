resource "aws_ses_event_destination" "default_ses_event_destination" {
  name                   = "${var.ses_event_destination_name}"
  configuration_set_name = var.configuration_set_name
  enabled                = var.enabled
  matching_types         = var.matching_types

  cloudwatch_destination {
    default_value  = "${var.cloudwatch_destination_default_value}"
    dimension_name = "${var.cloudwatch_destination_dimension_name}"
    value_source   = "${var.cloudwatch_destination_value_source}"
  }
}