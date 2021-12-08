resource "aws_db_instance" "main" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true
  apply_immediately    = var.apply_immediately
  identifier           = var.identifier
  iops                 = var.iops
  storage_type         = "${var.iops}" != null ? "io1" : "gp2"
  # availability_zone     = var.availability_zone
  max_allocated_storage           = var.max_allocated_storage
  multi_az                        = var.multi_az
  publicly_accessible             = var.publicly_accessible
  port                            = var.port
  db_subnet_group_name            = var.db_subnet_group_name
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot
  performance_insights_enabled    = var.performance_insights_enabled
  monitoring_interval             = var.monitoring_interval
  enabled_cloudwatch_logs_exports = var.log_export == true && var.engine == "mysql" ? var.enabled_cloudwatch_logs_exports_mysql_mariaDB : []
  backup_retention_period         = var.backup_retention_period
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  deletion_protection             = var.deletion_protection
  monitoring_role_arn             = var.monitoring_role_arn

}
