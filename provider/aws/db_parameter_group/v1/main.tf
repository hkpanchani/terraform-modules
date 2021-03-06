resource "aws_db_parameter_group" "main" {
  name        = var.name
  family      = var.family
  description = var.description

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}