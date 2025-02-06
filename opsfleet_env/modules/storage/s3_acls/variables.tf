variable "storage_name" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-s3-bucket"
}

variable "bucket_id" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-bkt-id"
}

variable "acl" {
  description = "Default Environment"
  type        = string
  default     = "private"
}
