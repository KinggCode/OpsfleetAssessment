resource "aws_instance" "default_instance" {
  ami           = var.ami_id
  associate_public_ip_address = var.associate_public_ip_address
  instance_type = "${var.instance_type}"
  subnet_id     = var.subnet_id
  iam_instance_profile    = var.instance_profile
  monitoring = var.monitoring
  key_name                    = var.key_name
  security_groups  = var.security_groups
  metadata_options {
    http_endpoint = "${var.http_endpoint}"
    http_tokens   = "${var.http_tokens}"
    instance_metadata_tags = "${var.instance_metadata_tags}"
  }
  
  root_block_device {
    volume_size = 100
    encrypted = var.encrypted
    delete_on_termination = var.delete_on_termination
  }

  tags = {
    Name = "${var.instance_name}" 
  }
}