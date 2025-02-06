variable "minimum_password_length" {
  type        = number
  description = "Default IAM Group ."
  default = 8
}


variable "require_lowercase_characters" {
  type        = bool
  description = "Default IAM Group ."
  default = true
}

variable "require_numbers" {
  type        = bool
  description = "Default IAM Group ."
  default = true
}

variable "require_uppercase_characters" {
  type        = bool
  description = "Default IAM Group ."
  default = true
}

variable "require_symbols" {
  type        = bool
  description = "Default IAM Group ."
  default = true
}

variable "allow_users_to_change_password" {
  type        = bool
  description = "Default IAM Group ."
  default = true
}
