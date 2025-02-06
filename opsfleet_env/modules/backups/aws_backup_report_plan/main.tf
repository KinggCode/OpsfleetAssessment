resource "aws_backup_report_plan" "example" {
  name        = "example_name"
  description = "example description"

  report_delivery_channel {
    formats = [
      "CSV",
      "JSON"
    ]
    s3_bucket_name = "example-bucket-name"
  }

  report_setting {
    report_template = "RESTORE_JOB_REPORT"
  }

  tags = {
    "Name" = "Example Report Plan"
  }
}