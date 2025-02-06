resource "aws_ses_configuration_set" "default_ses_configuration_set" {
  name = "${var.configuration_name}"

  delivery_options {
    tls_policy = "${var.tls_policy}"
  }
}