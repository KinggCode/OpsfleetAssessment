# Opsfleet Admin IAM Group
module "opsfleet_admins_group" {
  source     = "../../../modules/access_management/aws_iam_group"
  group_name = "OpsFleet-Administrators"
}

# Opsfleet Admin IAM User 
module "opsfleet_admin_user" {
  for_each  = var.opsfleet_admins
  source    = "../../../modules/access_management/aws_iam_user"
  user_name = each.value.name
}

# Admin Login Profile
module "opsfleet_admin_user_login" {
  for_each  = var.opsfleet_admins
  source    = "../../../modules/access_management/aws_iam_user_login_profile"
  user_name = module.opsfleet_admin_user[each.key].default_iam_user.name
}

module "opsfleet_admin_user_key" {
  for_each  = var.opsfleet_admins
  source    = "../../../modules/access_management/aws_iam_access_key"
  user_name = each.value.name
}

# Opsfleet Admin Group Membership
resource "aws_iam_user_group_membership" "opsfleet_admin_group_membership" {
  for_each = var.opsfleet_admins
  user     = module.opsfleet_admin_user[each.key].default_iam_user.name

  groups = [
    "${module.opsfleet_admins_group.default_iam_group.name}",
  ]
}

# Opsfleet Admin Group Policy
module "opsfleet_admin_group_policy" {
  source      = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "opsfleet-adminstrator-group-policy"
  group_name  = module.opsfleet_admins_group.default_iam_group.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:ChangePassword",
          "iam:*",
          "s3:*",
          "ec2:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
