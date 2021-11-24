variable "key_name" {}

variable "public_key" {}

variable "tags" {
  type = map(any)
    default = {
        Author : "Terraform"
    }
}