resource "aws_s3_bucket" "main" {
  bucket = var.bucket
  acl    = var.acl
  policy = var.policy

  dynamic "cors_rule" {
    for_each = "${var.cors_rule}" ? ["true"] : []

    content {
      allowed_headers = var.allowed_headers
      allowed_methods = var.allowed_methods
      allowed_origins = var.allowed_origins
      expose_headers  = var.expose_headers
      max_age_seconds = var.max_age_seconds
    }
  }

  versioning{
    enabled = var.versioning_enabled
    mfa_delete = var.versioning_mfa_delete
  }


  dynamic "website" {
    for_each = "${var.static_website}" ? ["true"] : []

    content {
      index_document = var.index_document
      error_document = var.error_document

      routing_rules = var.routing_rules
    }
  }
}
