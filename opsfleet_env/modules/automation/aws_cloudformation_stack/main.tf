resource "aws_cloudformation_stack" "default_cloudformation_stack" {
  name = "${var.stack_name}"

  parameters = {
    VPCCidr = "${var.vpc_cidr}"
  }

  template_body = var.policy_json
}