# Default Storage Bucket 
resource "aws_s3_bucket" "default_bucket" {
  bucket = "${var.bucket_name}"
  object_lock_enabled = var.object_lock
  tags = {
    Name        = "${var.storage_name}"
    Environment = "${var.env}"
  }

}