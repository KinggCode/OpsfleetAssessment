resource "aws_ami_copy" "default_ami_copy" {
  name              = "${var.ami_name}"
  description       = "${var.description}"
  source_ami_id     = "${var.source_ami_id}"
  source_ami_region = "${var.source_region}"

  tags = {
    Name = "${var.ami_name}"
    Env = "${var.environment}"
  }
}