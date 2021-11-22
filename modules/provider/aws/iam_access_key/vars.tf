variable "user" {
  type = string
}

variable "pgp_key" {
  default = ""
}

variable "new_user" {
  type = bool
  default = false
}