output "default_ami_copy" {
  description = "AMI Template"
  value = {
    transit_gateway_id  = aws_ami_copy.default_ami_copy.id
  }
}