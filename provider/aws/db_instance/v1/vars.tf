variable "availability_zone" {
  description = "availability_zone for RDS instance"
  # default     = ""
  type = string
  default = "ap-south-1"
}
variable "allocated_storage" {
  description = "Storage for RDS instance"
  # default     = ""
  type = any
}
variable "engine" {
  description = "RDS engine type for ex: mysql,postgres,oracle,mariadb,microsoftsqlserver"
  # default     = ""
  type = any
}
variable "engine_version" {
  description = "RDS DB version for ex : mysql 5.0,mysql8.0"
  # default     = ""
  type = any
}
variable "instance_class" {
  description = "RDS DB instance class "
  # default     = ""
  type = any
}
variable "name" {
  description = "RDS DB name"
  # default     = ""
  type = any
}
variable "username" {
  description = "RDS DB username"
  # default     = ""
  type      = any
  sensitive = true
}
variable "password" {
  description = "RDS DB password"
  # default     = ""
  type      = any
  sensitive = true
}
variable "parameter_group_name" {
  description = "RDS paramater group for any db engines for ex: default.mysql8.0, default.mysql5.0"
  # default     = ""
  type = any
}
variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false"
  type        = bool
}
variable "identifier" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = any
}
# variable "storage_type" {
#   description = "One of standard (magnetic), gp2 (general purpose SSD), or io1 (provisioned IOPS SSD). The default is io1 if iops is specified, gp2 if not."
#   type = any
# }
variable "iops" {
  description = "The amount of provisioned IOPS. Setting this implies a storage_type of io1"
  default     = null
}
variable "max_allocated_storage" {
  description = "To enable Storage Autoscaling with instances that support the feature, define the max_allocated_storage argument higher than the allocated_storage argument. Terraform will automatically hide differences with the allocated_storage argument value if autoscaling occurs."
  type        = any
  default     = null
}
variable "multi_az" {
  description = "If the RDS instance is multi AZ enabled"
  type        = bool
  default     = false
}
variable "publicly_accessible" {
  description = "If the RDS instance is multi AZ enabled"
  type        = bool
  default     = false
}
variable "port" {
  description = "To enable Storage Autoscaling with instances that support the feature, define the max_allocated_storage argument higher than the allocated_storage argument. Terraform will automatically hide differences with the allocated_storage argument value if autoscaling occurs."
  type        = any
  default     = 3306
}
variable "copy_tags_to_snapshot" {
  description = "To enable Storage Autoscaling with instances that support the feature, define the max_allocated_storage argument higher than the allocated_storage argument. Terraform will automatically hide differences with the allocated_storage argument value if autoscaling occurs."
  type        = bool
  default     = true
}
variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights are enabled. Defaults to false."
  type        = bool
  default     = false
}
variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance, To disable enter value = 0, Valid Values: 0, 1, 5, 10, 15, 30, 60."
  type        = number
  default     = 0

  validation {
    condition = anytrue([
      var.monitoring_interval == 0,
      var.monitoring_interval == 1,
      var.monitoring_interval == 5,
      var.monitoring_interval == 10,
      var.monitoring_interval == 15,
      var.monitoring_interval == 30,
      var.monitoring_interval == 60
    ])
    error_message = "Please enter the valid value like Valid Values: 0, 1, 5, 10, 15, 30, 60."
  }
}

variable "log_export" {
  description = "value in boolean whether to enable log export or not"
  type        = bool
  default = false
}

variable "enabled_cloudwatch_logs_exports" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance, To disable enter value = 0, Valid Values: 0, 1, 5, 10, 15, 30, 60."
  type        = map(any)
}

variable "enabled_cloudwatch_logs_exports_mysql_mariaDB" {
  description = "cloudwatch metric you want to select out of audit, error, general,slowquery."
}
variable "backup_retention_period" {
  description = "The days to retain backups for. Must be between 0 and 35. Must be greater than 0"

  validation {
    condition = var.backup_retention_period >= 0 && var.backup_retention_period <= 35
    error_message = "Enter the valid value between 0 and 35."
  }
}
variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Defaults to true."
  type = bool
  default = true
}
variable "deletion_protection" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Defaults to true."
  type = bool
  default = true
}

variable "monitoring_role_arn" {
  
}

variable "db_subnet_group_name" {
  default = ""
}