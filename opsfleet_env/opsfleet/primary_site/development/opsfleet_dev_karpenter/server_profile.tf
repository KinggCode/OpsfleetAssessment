# Policy Document
data "aws_iam_policy_document" "karpenter_policy_document" {
  statement {
    sid     = "1"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com", "ec2.amazonaws.com"]
    }

  }
}

# Server Role
module "opsfleet_dev_karpenter_role" {
  source = "../../../../modules/access_management/aws_iam_role"
  role_name = "karpenter-role"
  assume_role_policy = data.aws_iam_policy_document.karpenter_policy_document.json
}


module "opsfleet_dev_karpenter_policy" {
  source = "../../../../modules/access_management/aws_iam_policy"
  policy_name = "karpeneter-policy"
  policy_description = "IAM policy for Karpenter"
  policy = file("karpenter-policy.json")
}


module "opsfleet_dev_karpenter_attach" {
  source = "../../../../modules/access_management/aws_iam_role_policy_attachment"
  role_name = module.opsfleet_dev_karpenter_role.default_iam_role.name
  policy_arn = module.opsfleet_dev_karpenter_policy.default_iam_policy.arn

  
}
# Server Profile 
module "opsfleet_dev_karpenter_profile" {
  source ="../../../../modules/access_management/aws_iam_instance_profile"
  instance_profile_name = "${var.company}_karpenter_clusterr_profile"
  role_name = module.opsfleet_dev_karpenter_role.default_iam_role.name

}
