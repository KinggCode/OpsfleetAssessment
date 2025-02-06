resource "aws_codestarconnections_host" "default_codestarconnections_host" {
  name              = "${var.host_name}"
  provider_endpoint = "${var.provider_endpoint}"
  provider_type     = "${var.provider_type}"
}