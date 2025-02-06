# data "aws_iam_policy_document" "karpenter_assume_role" {
#   statement {
#     actions = ["sts:AssumeRole"]
#     principals {
#       type        = "Service"
#       identifiers = ["eks.amazonaws.com", "ec2.amazonaws.com"]
#     }
#   }
# }

# resource "aws_iam_role" "karpenter_role" {
#   name               = "karpenter-role"
#   assume_role_policy = data.aws_iam_policy_document.karpenter_assume_role.json
# }

# resource "aws_iam_policy" "karpenter_policy" {
#   name        = "karpenter-policy"
#   description = "IAM policy for Karpenter"
#   policy      = file("karpenter-policy.json")
# }

# resource "aws_iam_role_policy_attachment" "karpenter_attach" {
#   role       = aws_iam_role.karpenter_role.name
#   policy_arn = aws_iam_policy.karpenter_policy.arn
# }
