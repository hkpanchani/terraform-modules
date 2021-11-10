variable "vpc_id" {}

variable "internet_gateway_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}