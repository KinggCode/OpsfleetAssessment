resource "aws_ses_event_destination" "default_ses_event_destination" {
  name                   = "${var.ses_event_destination_name}"
  configuration_set_name = avar.configuration_set_name
  enabled                = var.enabled
  matching_types         = var.matching_types

  kinesis_destination {
    stream_arn = var.kinesis_destination_stream_arn
    role_arn   = var.kinesis_destination_role_arn
  }
}