variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}