variable "name" {}

variable "role_arn" {}

variable "subnet_ids" {}

variable "endpoint_private_access" {
    default = false
}

variable "endpoint_public_access" {
    default = true
}

variable "eks_version" {
  default = ""
}