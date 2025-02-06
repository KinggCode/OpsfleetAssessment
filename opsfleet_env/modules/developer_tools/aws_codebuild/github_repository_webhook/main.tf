resource "github_repository_webhook" "default_github_repository_webhook" {
  active     = var.git_webhook_active
  events     = var.git_webhook_events
  name       = "${var.git_webhook_name}"
  repository = var.git_webhook_repository_name

  configuration {
    url          = var.configuration_url
    secret       = var.configuration_secret
    content_type = "${var.configuration_content_type}"
    insecure_ssl = var.configuration_insecure_ssl
  }
}