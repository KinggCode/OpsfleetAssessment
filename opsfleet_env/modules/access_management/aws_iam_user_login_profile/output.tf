output "default_iam_user_login_profile_password" {
  value = aws_iam_user_login_profile.default_iam_user_login_profile.encrypted_password
}