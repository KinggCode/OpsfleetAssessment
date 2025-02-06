resource "aws_codebuild_webhook" "default_codebuild_webhook" {
  project_name = var.project_name
  build_type   = "${var.build_type}"
  filter_group {
    filter {
      type    = "${var.type_1}"
      pattern = "${var.pattern_1}"
    }

    filter {
      type    = "${var.type_2}"
      pattern = "${var.pattern_2}"
    }
  }
}