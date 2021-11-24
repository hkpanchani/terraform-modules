variable "vpc_id" {}

variable "route_table_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}