
variable "bucket_id" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-bkt-id"
}

variable "status" {
  description = "Default Versioning Status"
  type        = string
  default     = "Enabled"
}
