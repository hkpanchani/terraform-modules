variable "log_destination_configs" {
  type = list(any)
}

variable "resource_arn" {

}

variable "logging_filter" {
  type    = bool
  default = false
}
