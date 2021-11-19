  variable "name" {
    type = string
  }

  variable "description" {
    type = string
  }

variable "scope" {
  # Values can "CLOUDFRONT" OR "REGIONAL"
  type = string
  default = "REGIONAL"
}

variable "tags" {
  type = map(any)
    default = {
        Author : "Terraform"
    }
}

variable "cloudwatch_metrics_enabled" {
    type = bool
    default = false
}

variable "metric_name" {
    type = string
}

variable "sampled_requests_enabled" {
    type = bool
    default = false
}