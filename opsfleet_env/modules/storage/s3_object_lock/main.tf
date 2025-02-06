resource "aws_s3_bucket_object_lock_configuration" "default_s3_bucket_object_lock_configuration" {
  bucket = var.bucket_id
  rule {
    default_retention {
      mode = "${var.default_retention_mode}"
      days = var.default_retention_period
    }
  }
}