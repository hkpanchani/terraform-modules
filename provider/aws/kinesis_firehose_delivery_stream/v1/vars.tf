variable "name" {
  type = string
}

variable "destination" {
  type = string
}

variable "role_arn" {
    default = null
}

variable "bucket_arn" {
    default = null
}

variable "processing_configuration" {
  type    = bool
  default = false
}

variable "type" {
  default = null
}

variable "parameter_name" {
  default = null
}

variable "parameter_value" {
  default = null
}
