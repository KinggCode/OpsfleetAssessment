# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# --- examples/central_shared_services/modules/iam/variables.tf ---

variable "name" {
  type        = string
  description = "Default SES Domain Name."
  default = "MyTemplate"
}

variable "subject" {
  type        = string
  description = "Default SES Domain Name."
  default = "Greetings, {{name}}!"
}


variable "html" {
  type        = string
  description = "Default SES Domain Name."
  default = "<h1>Hello {{name}},</h1><p>Your favorite animal is {{favoriteanimal}}.</p>"
}


variable "text" {
  type        = string
  description = "Default SES Domain Name."
  default = "Hello {{name}},\r\nYour favorite animal is {{favoriteanimal}}."
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

