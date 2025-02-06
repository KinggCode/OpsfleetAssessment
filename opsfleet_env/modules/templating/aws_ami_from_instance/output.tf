output "default_ami_from_instance" {
  description = "AMI Template"
  value = {
    transit_gateway_id  = aws_ami_from_instance.default_ami.id
  }
}