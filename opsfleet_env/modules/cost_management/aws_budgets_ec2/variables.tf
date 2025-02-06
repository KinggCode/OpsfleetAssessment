

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "budget_name" {
  type        = string
  description = "Default Budget Name."
  default = "budget-ec2-monthly"
}

variable "budget_type" {
  type        = string
  description = "Default Budget Type."
  default = "COST"
}

variable "limit_amount" {
  type        = string
  description = "Default Budget Limit Amount."
  default = "1200"
}

variable "limit_unit" {
  type        = string
  description = "Default Budget Limit Unit."
  default = "USD"
}

variable "time_period_end" {
  type        = string
  description = "Default Budget End Period."
  default = "2023-06-30_00:00"
}

variable "time_period_start" {
  type        = string
  description = "Default Budget Start Period."
  default = "2023-06-01_00:00"
}

variable "time_unit" {
  type        = string
  description = "Default Budget Time Unit."
  default = "MONTHLY"
}


variable "comparison_operator" {
  type        = string
  description = "Default Budget Comparison Operator."
  default = "GREATER_THAN"
}


variable "threshold" {
  type        = number
  description = "Default Budget Notification Threshold."
  default = 100
}

variable "threshold_type" {
  type        = string
  description = "Default Budget Notification Threshold Type."
  default = "PERCENTAGE"
}


variable "notification_type" {
  type        = string
  description = "Default Budget Notification Type."
  default = "FORECASTED"
}


variable "subscriber_email_addresses" {
  type        = list(string)
  description = "Default Budget Notification Subscriber Email Address."
  default = ["test@example.com"]
}





variable "include_credit" {
  type        = bool
  description = "Default Budget Cost Type Include Credit"
  default = true
}


variable "include_discount" {
  type        = bool
  description = "Default Budget Cost Type Include Discount"
  default = false
}

variable "include_other_subscription" {
  type        = bool
  description = "Default Budget Cost Type Include Other Subscription"
  default = false
}


variable "include_recurring" {
  type        = bool
  description = "Default Budget Cost Type Include Referring"
  default = false
}


variable "include_refund" {
  type        = bool
  description = "Default Budget Cost Type Include Refund"
  default = false
}


variable "include_subscription" {
  type        = bool
  description = "Default Budget Cost Type Include Subscription"
  default = true
}






variable "include_support" {
  type        = bool
  description = "Default Budget Cost Type Include Support"
  default = false
}

variable "include_tax" {
  type        = bool
  description = "Default Budget Cost Type Include Tax"
  default = false
}


variable "include_upfront" {
  type        = bool
  description = "Default Budget Cost Type Include Upfrint"
  default = false
}

variable "use_blended" {
  type        = bool
  description = "Default Budget Cost Type Include Blended"
  default = false
}











##############################################################

variable "env" {
  type        = string
  description = "Default Environment"
  default = "dev"
}

variable "company" {
  type        = string
  description = "Default Company"
  default = "opsfleet"
}