resource "aws_codebuild_source_credential" "default_codebuild_source_credential" {
  auth_type   = "${var.auth_type}"
  server_type = "${var.server_type}"
  token       = "${var.token}"
}