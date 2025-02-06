# Opsfleet Developer IAM Group
module "opsfleet_engineer_group" {
  source = "../../../modules/access_management/aws_iam_group"
  group_name = "OpsFleet-Engineers"
}

# Opsfleet Developer IAM User 
module "opsfleet_engineer_user" {
  for_each = var.opsfleet_engineers
  source = "../../../modules/access_management/aws_iam_user"
  user_name = each.value.name
}

# Developer Login Profile
module "opsfleet_engineer_user_login" {
  for_each = var.opsfleet_engineers
  source = "../../../modules/access_management/aws_iam_user_login_profile"
  user_name = "${module.opsfleet_engineer_user[each.key].default_iam_user.name}"
}

module "opsfleet_engineers_user_key"{
  for_each = var.opsfleet_engineers
  source = "../../../modules/access_management/aws_iam_access_key"
  user_name = each.value.name
}

# Opsfleet Developer Group Membership
resource "aws_iam_user_group_membership" "opsfleet_engineer_group_membership" {
  for_each = var.opsfleet_engineers
  user = "${module.opsfleet_engineer_user[each.key].default_iam_user.name}"

  groups = [
    "${module.opsfleet_engineer_group.default_iam_group.name}",
  ]
}

# Opsfleet Developer Group Policy
module "opsfleet_engineer_group_policy" {
  source = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "opsfleet-engineers-group-policy"
  group_name = module.opsfleet_engineer_group.default_iam_group.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:ChangePassword",
          "iam:*AccessKey*",
          "s3:*",
          "ec2:*",
          "cloud9:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


module "opsfleet_engineer_codecommit_group_policy" {
  source = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "espace-engineers-codecommit-group-policy"
  group_name = module.opsfleet_engineer_group.default_iam_group.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "codecommit:ListAssociatedApprovalRuleTemplatesForRepository",
          "codecommit:ListBranches",
          "codecommit:ListRepositoriesForApprovalRuleTemplate",
          "codecommit:ListPullRequests",
          "codecommit:ListRepositories",
          "codecommit:ListTagsForResource",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


module "opsfleet_engineer_ses_group_policy" {
  source = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "espace-engineers-ses-group-policy"
  group_name = module.opsfleet_engineer_group.default_iam_group.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ses:CreateReceiptRule",
          "ses:ListTemplates",
          "ses:UpdateConfigurationSetEventDestination",
          "ses:SetIdentityMailFromDomain",
          "ses:ListCustomVerificationEmailTemplates",
          "ses:VerifyEmailIdentity",
          "ses:TestRenderTemplate",
          "ses:CreateReceiptFilter",
          "ses:CreateConfigurationSetTrackingOptions",
          "ses:UpdateAccountSendingEnabled",
          "ses:VerifyDomainDkim",
          "ses:VerifyDomainIdentity",
          "ses:CloneReceiptRuleSet",
          "ses:SetIdentityHeadersInNotificationsEnabled",
          "ses:SendEmail",
          "ses:ListConfigurationSets",
          "ses:SendTemplatedEmail",
          "ses:SendCustomVerificationEmail",
          "ses:UpdateTemplate",
          "ses:ListIdentities",
          "ses:UpdateConfigurationSetTrackingOptions",
          "ses:SetIdentityNotificationTopic",
          "ses:SetIdentityDkimEnabled",
          "ses:PutConfigurationSetDeliveryOptions",
          "ses:VerifyEmailAddress",
          "ses:UpdateReceiptRule",
          "ses:CreateConfigurationSet",
          "ses:UpdateConfigurationSetReputationMetricsEnabled",
          "ses:CreateTemplate",
          "ses:SendRawEmail",
          "ses:ReorderReceiptRuleSet",
          "ses:SendBounce",
          "ses:UpdateConfigurationSetSendingEnabled",
          "ses:ListIdentityPolicies",
          "ses:SetActiveReceiptRuleSet",
          "ses:CreateCustomVerificationEmailTemplate",
          "ses:UpdateCustomVerificationEmailTemplate",
          "ses:CreateReceiptRuleSet",
          "ses:SetReceiptRulePosition",
          "ses:CreateConfigurationSetEventDestination",
          "ses:SendBulkTemplatedEmail",
          "ses:SetIdentityFeedbackForwardingEnabled",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}




# Opsfleet Developer Group Policy
/* module "opsfleet_engineer_group_ses_policy" {
  source      = "../../../modules/access_management/aws_iam_group_policy"
  policy_name = "engineers-ses-group-policy"
  group_name  = module.opsfleet_engineer_group.default_iam_group.name
  policy = jsonencode({
    Version = "2023-06-14"
    Statement = [
      {
        Action = [
          "ses:CreateReceiptRule",
          "ses:ListTemplates",
          "ses:UpdateConfigurationSetEventDestination",
          "ses:SetIdentityMailFromDomain",
          "ses:ListCustomVerificationEmailTemplates",
          "ses:VerifyEmailIdentity",
          "ses:TestRenderTemplate",
          "ses:CreateReceiptFilter",
          "ses:CreateConfigurationSetTrackingOptions",
          "ses:UpdateAccountSendingEnabled",
          "ses:VerifyDomainDkim",
          "ses:VerifyDomainIdentity",
          "ses:CloneReceiptRuleSet",
          "ses:SetIdentityHeadersInNotificationsEnabled",
          "ses:SendEmail",
          "ses:ListConfigurationSets",
          "ses:SendTemplatedEmail",
          "ses:SendCustomVerificationEmail",
          "ses:UpdateTemplate",
          "ses:ListIdentities",
          "ses:UpdateConfigurationSetTrackingOptions",
          "ses:SetIdentityNotificationTopic",
          "ses:SetIdentityDkimEnabled",
          "ses:PutConfigurationSetDeliveryOptions",
          "ses:VerifyEmailAddress",
          "ses:UpdateReceiptRule",
          "ses:CreateConfigurationSet",
          "ses:UpdateConfigurationSetReputationMetricsEnabled",
          "ses:CreateTemplate",
          "ses:SendRawEmail",
          "ses:ReorderReceiptRuleSet",
          "ses:SendBounce",
          "ses:UpdateConfigurationSetSendingEnabled",
          "ses:ListIdentityPolicies",
          "ses:SetActiveReceiptRuleSet",
          "ses:CreateCustomVerificationEmailTemplate",
          "ses:UpdateCustomVerificationEmailTemplate",
          "ses:CreateReceiptRuleSet",
          "ses:SetReceiptRulePosition",
          "ses:CreateConfigurationSetEventDestination",
          "ses:SendBulkTemplatedEmail",
          "ses:SetIdentityFeedbackForwardingEnabled",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
} */
