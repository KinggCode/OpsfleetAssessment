# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/vpc_endpoints/variables.tf ---

variable "app_name" {
  description = "Default Deployment App Name"
  type        = string
  default     = "default"
}

variable "deployment_group_name" {
  description = "Default Deployment Group Name"
  type        = string
  default     = "bar"
}

variable "service_role_arn" {
  description = "Default Service Role ARN"
  type        = string
  default     = "bar"
}


variable "deployment_config_name" {
  description = "DefaultDeployment Config Name"
  type        = string
  default     = "default"
}


#ec2_tag_filter
########################################################################

variable "ec2_tag_filter_key" {
  description = "Default EC2 Tag Filter Key"
  type        = string
  default     = "filterkey"
}

variable "ec2_tag_filter_type" {
  description = "Default EC2 Tag Filter Type"
  type        = string
  default     = "KEY_AND_VALUE"
}


variable "ec2_tag_filter_value" {
  description = "Default EC2 Tag Filter Value"
  type        = string
  default     = "filtervalue"
}


#trigger_configuration
########################################################################

variable "trigger_configuration_trigger_events" {
  description = "Default Trigger Configuration Events"
  type        = list(string)
  default     = ["DeploymentFailure"]
}

variable "trigger_configuration_trigger_name" {
  description = "Default Trigger Configuration Name"
  type        = string
  default     = "foo-trigger"
}


variable "trigger_configuration_trigger_target_arn" {
  description = "Default Trigger Configuration ARN"
  type        = string
  default     = "foo-topic-arn"
}


#auto_rollback_configuration
########################################################################

variable "auto_rollback_configuration_enabled" {
  description = "Default Auto Rollback Configuration Enabled"
  type        = bool
  default     = true
}

variable "auto_rollback_configuration_events" {
  description = "Default Auto Rollback Configuration"
  type        = list(string)
  default     = ["DEPLOYMENT_FAILURE"]
}

#alarm_configuration
########################################################################

variable "alarm_configuration_enabled" {
  description = "Default Trigger Configuration Events"
  type        = bool
  default     = true
}

variable "alarm_configuration_alarms" {
  description = "Default Auto Rollback Configuration"
  type        = list(string)
  default     =["my-alarm-name"]
}




# General Variables #
########################################################################
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