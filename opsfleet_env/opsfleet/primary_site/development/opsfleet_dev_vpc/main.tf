################################################################################
# Opsfleet - Dev Resource Imports
################################################################################

# Default VPC Assume Role
data "aws_iam_policy_document" "vpc_assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["vpc-flow-logs.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}


module "vnet_role" {
  source = "../../../../modules/access_management/aws_iam_role"
  role_name = "${var.company_name}_${var.env}_vpc_log_role"
  assume_role_policy = data.aws_iam_policy_document.vpc_assume_role.json
}


# Default Log Policy
data "aws_iam_policy_document" "log_policy" {
  statement {
    effect = "Allow"

    actions = [
      "logs:*",
    #   "logs:CreateLogStream",
    #   "logs:PutLogEvents",
    #   "logs:DescribeLogGroups",
    #   "logs:DescribeLogStreams",
    ]

    resources = ["*"]
  }
}
