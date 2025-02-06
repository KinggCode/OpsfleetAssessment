resource "aws_iam_virtual_mfa_device" "default_mfa_device" {
  virtual_mfa_device_name = "${var.mfa_device}"
  path = "${var.mfa_path}"
}