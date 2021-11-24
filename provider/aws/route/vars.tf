variable "route_table_id" {}

variable "destination_cidr_block" {}

variable "is_gateway_id" {
  default = false
}

variable "gateway_id" {
    default = ""
}

variable "is_nat_gateway_id" {
  default = false
}

variable "nat_gateway_id" {
    default = ""
}