
resource "aws_codestarconnections_connection" "default_codestarconnections_connection" {
  name          = "${var.connection_name}"
  provider_type = "${var.connection_provider}"
}