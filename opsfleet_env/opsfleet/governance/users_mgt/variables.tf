

# OpsFleet Inc. All Rights Reserved.
# Definition of the OpsFleet IAM Users to create in North Virginia Region (us-east-1)

# OpsFleet Develeopers 
variable "opsfleet_engineers" {
  type        = any
  description = "Information about the IAM USERS Account."

  default = {
    "user_1" = {
      name = "OpsFleet_Lead_DevOps_Engineer"
      tags = ["opsfleet-lead-devops-engineer", "lead-devops"]

    }
    "user_1" = {
      name = "OpsFleet_DevOps_Engineer"
      tags = ["opsfleet-devops-engineer", "engineer"]

    }
  }
}

# OpsFleet Administrators 
variable "opsfleet_admins" {
  type        = any
  description = "Information about the IAM USERS Account."

  default = {
    "user_2" = {
      name = "OpsFleet_Admin"
      tags = ["opsfleet-admin", "administrator"]

    }
  }
}
