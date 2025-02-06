# SPDX-License-Identifier: MIT-0

# --- root/outputs.tf ---

output "default_ec2_transit_gateway" {
  value = aws_ec2_transit_gateway.default_ec2_transit_gateway
}