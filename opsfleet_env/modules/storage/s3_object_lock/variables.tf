variable "bucket_id" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-bkt-id"
}


variable "default_retention_mode" {
  description = "Default S3 bucket default_retention mode"
  type        = string
  default     = "COMPLIANCE"
}


variable "default_retention_period" {
  description = "Default S3 bucket default_retention period"
  type        = number
  default     = "5"
}
