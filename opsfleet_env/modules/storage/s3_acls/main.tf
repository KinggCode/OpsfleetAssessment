# OpsFleet Bucket ACLs 
resource "aws_s3_bucket_acl" "default_default_bucket_acl" {
  bucket = var.bucket_id
  acl    = "${var.acl}"
}
