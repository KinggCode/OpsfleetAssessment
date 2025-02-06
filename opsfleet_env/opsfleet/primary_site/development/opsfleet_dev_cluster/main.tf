
# OpsFleet Dev Web Subnet
data "aws_subnet" "ops_fleet_dev_web_tier" {
  id = var.web_tier_subnet
}

# OpsFleet Dev Public Subnet
data "aws_subnet" "ops_fleet_dev_public_tier" {
  id = var.public_tier_subnet
}


# OpsFleet Root Test User
data "aws_iam_user" "root_test" {
  user_name = "root-test"
}