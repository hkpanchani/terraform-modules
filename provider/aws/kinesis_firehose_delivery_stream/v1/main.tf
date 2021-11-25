resource "aws_kinesis_firehose_delivery_stream" "main" {
  name        = "aws-waf-logs-${var.name}"
  destination = var.destination

  dynamic "extended_s3_configuration" {
    for_each = var.destination == "extended_s3" ? ["true"] : []

    content {
      role_arn   = var.role_arn
      bucket_arn = var.bucket_arn

      processing_configuration {
        enabled = var.processing_configuration

        dynamic "processors" {
          for_each = var.processing_configuration ? ["true"] : []

          content {
            type = var.type

            parameters {
              parameter_name  = var.parameter_name
              parameter_value = var.parameter_value
            }
          }
        }
      }
    }
  }
}
