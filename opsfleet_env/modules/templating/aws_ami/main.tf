# Create an AMI that will start a machine whose root device is backed by
# an EBS volume populated from a snapshot. We assume that such a snapshot
# already exists with the id "snap-xxxxxxxx".
resource "aws_ami" "default_ami" {
  name                = "${var.ami_name}"
  virtualization_type = "${var.virtualization_type}"
  root_device_name    = "${var.device_name}"
  imds_support        = "${var.imd_support}" # Enforce usage of IMDSv2. You can safely remove this line if your application explicitly doesn't support it.
  ebs_block_device {
    device_name = "${var.device_name}"
    snapshot_id = "${var.snapshot_id}"
    volume_size = var.volume
  }
}