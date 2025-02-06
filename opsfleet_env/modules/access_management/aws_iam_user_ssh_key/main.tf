resource "aws_iam_user_ssh_key" "default_iam_user_ssh_key" {
  username   = var.username
  encoding   = "${var.encoding}"
  public_key = "${var.public_key}"
}