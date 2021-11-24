variable "subnet_cidr" {
  default = "10.0.0.0/20"
}

variable "vpc_id" {}

variable "subnet_az" {
  default = ""
}

variable "subnet_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}