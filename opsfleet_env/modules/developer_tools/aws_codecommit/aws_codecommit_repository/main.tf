resource "aws_codecommit_repository" "default_repository" {
  repository_name = "${var.repository_name}"
  description     = "${var.repository_description}"

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}
