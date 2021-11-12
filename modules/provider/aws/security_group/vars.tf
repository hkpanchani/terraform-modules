variable "name" {}

variable "description" {}

variable "vpc_id" {}

variable ingress_rules {
  type = list( object({
    from = number
    to = number
    protocol = string
    cidr = list(string)
  }))
  default = []
}

variable egress_rules {
  type = list( object({
    from = number
    to = number
    protocol = string
    cidr = list(string)
  }))

  default = []
}

variable "security_group_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}