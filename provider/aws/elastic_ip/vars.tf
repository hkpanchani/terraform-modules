variable "eip_tags" {
    type = map(any)
    default = {
        Author : "Terraform"
    }
}