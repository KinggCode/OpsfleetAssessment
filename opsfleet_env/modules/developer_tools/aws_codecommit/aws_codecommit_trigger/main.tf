resource "aws_codecommit_trigger" "default_codecommit_trigger" {
  repository_name = var.repository_name

  trigger {
    name            = var.trigger_name
    events          = var.trigger_events
    destination_arn = var.trigger_destination_arn
  }
}