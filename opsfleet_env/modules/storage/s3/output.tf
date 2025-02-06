# Default OpsFleet Storage 
output "default_default_storage" {
  value       = aws_s3_bucket.default_bucket
  description = "EC2 instance profile to use in the EC2 instace(s) to create."
}