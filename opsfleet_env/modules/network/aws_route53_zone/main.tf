resource "aws_route53_zone" "default_route53_zone" {
  name = "${var.zone_name}"
    # NOTE: The aws_route53_zone vpc argument accepts multiple configuration
  #       blocks. The below usage of the single vpc configuration, the
  #       lifecycle configuration, and the aws_route53_zone_association
  #       resource is for illustrative purposes (e.g., for a separate
  #       cross-account authorization process, which is not shown here).
  
  tags = {
    env = "${var.env}"
    company = "${var.company}"
  }
}
