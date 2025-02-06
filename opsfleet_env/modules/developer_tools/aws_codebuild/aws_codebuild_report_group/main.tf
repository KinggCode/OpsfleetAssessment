resource "aws_codebuild_report_group" "default_codebuild_report_group" {
  name = "${var.group_name}"
  type = "${var.group_type}"

  export_config {
    type = "${var.config_type}"

    s3_destination {
      bucket              = var.bucket_id
      encryption_disabled = var.encryption_disabled
      encryption_key      = var.encryption_key
      packaging           = "${var.packaging}"
      path                = "${var.path}"
    }
  }
}