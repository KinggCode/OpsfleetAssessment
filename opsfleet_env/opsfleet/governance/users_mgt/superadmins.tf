
# Opsfleet Developer IAM Group
module "opsfleet_superadmins_group" {
  source     = "../../../modules/access_management/aws_iam_group"
  group_name = "OpsFleet-Super-Administrators"
}

# Opsfleet Super Admin Group Membership
resource "aws_iam_user_group_membership" "opsfleet_superadmin_group_membership" {
  for_each = var.opsfleet_admins
  user     = module.opsfleet_admin_user[each.key].default_iam_user.name

  groups = [
    "${module.opsfleet_superadmins_group.default_iam_group.name}",
  ]
}

# Opsfleet Super Admin Group Policy
module "opsfleet_superadmin_group_policy" {
  source      = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "opsfleet-super-admin-group-policy"
  group_name  = module.opsfleet_superadmins_group.default_iam_group.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:ChangePassword",
          "iam:*",
          "s3:*",
          "ec2:*",
          "network-firewall:*",
          "cloudformation:*",
          "cloud9:*",
          "route53:*",
          "ssm:*",
          "network-firewall:*",
          "codecommit:*",
          "billing:*",
          "elasticloadbalancing:*",
          "cloudwatch:*",
          "autoscaling:*",
          "kms:*",

        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}