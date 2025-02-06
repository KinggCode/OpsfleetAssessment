resource "aws_cloudformation_stack_set" "default_cloudformation_stack_set" {
  administration_role_arn = var.administration_role_arn
  name                    = "${var.stack_set_name}"

  parameters = {
    VPCCidr = "${var.vpc_cidr}"
  }

  template_body = var.policy_json
}