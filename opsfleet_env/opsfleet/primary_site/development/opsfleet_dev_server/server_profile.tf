# Policy Document
data "aws_iam_policy_document" "policy_document" {
  statement {
    sid     = "1"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

  }
}


# Server Role
module "opsfleet_dev_server_role" {
  source = "../../../../modules/access_management/aws_iam_role"
  role_name = "${var.company}-${var.env}-vm-role"
  assume_role_policy = data.aws_iam_policy_document.policy_document.json
}

# Server Profile 
module "opsfleet_dev_server_profile" {
  source ="../../../../modules/access_management/aws_iam_instance_profile"
  instance_profile_name = "${var.company}_${var.env}_server_profile"
  role_name = module.opsfleet_dev_server_role.default_iam_role.name

}
