variable "name" {
}

variable "description" {
}
variable "scope" {
    default = "REGIONAL"
}

variable "ip_address_version" {
  default = "IPV4"
}

variable "addresses" {
  default = []
}

variable "tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}