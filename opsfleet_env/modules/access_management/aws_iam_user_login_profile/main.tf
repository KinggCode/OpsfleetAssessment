resource "aws_iam_user_login_profile" "default_iam_user_login_profile" {
  user    = "${var.user_name}"
  /* pgp_key = "keybase:some_person_that_exists" */
  password_length = "${var.password_len}"
  password_reset_required = "${var.password_reset}"
}

