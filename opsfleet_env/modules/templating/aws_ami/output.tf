output "default_vpc" {
  description = "AMI Template"
  value = {
    vpc_id  = aws_vpc.default_vpc.id
  }
}