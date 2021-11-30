variable "availability_zone" {
  description = "availability_zone for RDS instance"
  # default     = ""
  type = string
}
variable "name" {
  description = "name for RDS paramter group"
  # default     = ""
  type = string
}
variable "family" {
  description = "family for RDS paramter group"
  # default     = ""
  type = string
}
variable "description" {
  description = "descrition for RDS paramter group"
  # default     = ""
  type = string
}