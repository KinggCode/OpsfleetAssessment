resource "aws_codedeploy_app" "default_codedeploy_app" {
  compute_platform = "${var.compute_platform}"
  name             = "${var.codedeploy_name}"
}