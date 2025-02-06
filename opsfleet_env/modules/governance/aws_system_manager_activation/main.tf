resource "aws_ssm_activation" "default_ssm_activation" {
  name               = "${var.ssm_name}"
  description        = "${var.ssm_description}"
  iam_role           = var.iam_role_id
  registration_limit = "${var.registration_limit}"
}