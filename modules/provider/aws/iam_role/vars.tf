variable "name" {}

variable "assume_role_policy" {
    default = ""
}

variable "managed_policy_arns" {
  default = []
  type = list
}