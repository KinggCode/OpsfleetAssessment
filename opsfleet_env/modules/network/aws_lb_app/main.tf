resource "aws_lb" "default_lb" {
  name               = "${var.load_balancer_name}"
  internal           = var.internal
  load_balancer_type = "${var.load_balancer_type}"
  security_groups    = var.security_group_ids
  subnets            = var.subnet_ids

  enable_deletion_protection = var.enable_deletion_protection

  access_logs {
    bucket  = var.bucket_id
    prefix  = "${var.prefix}"
    enabled = var.logs_enable
  }

  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}