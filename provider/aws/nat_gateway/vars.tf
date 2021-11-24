variable "allocation_id" {}

variable "subnet_id" {}

variable "nat_gateway_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}