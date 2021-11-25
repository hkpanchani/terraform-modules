resource "aws_wafv2_web_acl_logging_configuration" "main" {
  log_destination_configs = var.log_destination_configs
  resource_arn            = var.resource_arn

  dynamic "logging_filter" {
    for_each = var.logging_filter ? ["true"] : []
    content {
      default_behavior = "KEEP"

      filter {
        behavior = "DROP"

        condition {
          action_condition {
            action = "COUNT"
          }
        }

        condition {
          label_name_condition {
            label_name = "awswaf:111122223333:rulegroup:testRules:LabelNameZ"
          }
        }

        requirement = "MEETS_ALL"
      }

      filter {
        behavior = "KEEP"

        condition {
          action_condition {
            action = "ALLOW"
          }
        }

        requirement = "MEETS_ANY"
      }
    }
  }
}
