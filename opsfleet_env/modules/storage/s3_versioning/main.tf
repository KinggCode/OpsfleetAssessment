resource "aws_s3_bucket_versioning" "default_bucket_versioning" {
  bucket = var.bucket_id
  versioning_configuration {
    status = "${var.status}"
  }
}