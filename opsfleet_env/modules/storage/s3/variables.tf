variable "storage_name" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-s3-bucket"
}

variable "bucket_name" {
  description = "Default S3 bucket Name"
  type        = string
  default     = "default-s3-bucket"
}

variable "env" {
  description = "Default Environment"
  type        = string
  default     = "Dev"
}

variable "object_lock" {
  description = "Default Object Lock"
  type        = bool
  default     = false
}


# AWS Regions to use in this example
variable "aws_regions" {
  type        = map(string)
  description = "Default OpsFleet AWS regions to spin up resources."
  default = {
    north_virginia   = "us-east-1"
    ohio             = "us-east-2"
    north_california = "us-west-1"
    oregon           = "us-west-2"
    stockholm        = "eu-north-1"
    london           = "eu-west-2"
  }
}
