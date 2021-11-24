variable "name" {
  type = string
}

variable "path" {
  default = "/"
}

variable "tags" {
    type = map(any)
    default =  {
        Author : "Terraform"
    }
}