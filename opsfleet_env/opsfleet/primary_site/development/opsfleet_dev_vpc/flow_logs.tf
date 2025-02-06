
################################################################################
# Opsfleet - Dev Flow Logs Configuration
################################################################################

# OpsFleet Dev Cloudwatch Log Group
module "opsfleet_dev_cloudwatch_log" {
  source = "../../../../modules/monitoring/aws_cloudwatch_log_group"
  group_name = "${var.company_name}-${var.env}-vpc-logs"
  env = "${var.env}"
  company = "${var.company_fullname}"
}


# OpsFleet Dev VPC Flow Logs 
module "opsfleet_dev_vpc_logs" {
  source = "../../../../modules/network/aws_flow_log"
  role_arn = "${module.vnet_role.default_iam_role.arn}"
  cloudwatch_log_group = "${module.opsfleet_dev_cloudwatch_log.default_cloudwatch_log_group.arn}"
  traffic_type = "ALL"
  vpc_id = "${module.opsfleet_dev_vpc.default_vpc.id}"
}


# OpsFleet Dev VPC Flow Logs  Role Policy 
module "opsfleet_dev_role_policy" {
  source = "../../../../modules/access_management/aws_iam_role_policy"
  policy_name = "${var.company_name}_${var.env}_vpc_policy"
  role = module.vnet_role.default_iam_role.id
  policy = data.aws_iam_policy_document.log_policy.json
}