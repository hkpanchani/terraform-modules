resource "aws_wafv2_web_acl" "main" {
  name        = "${var.name}"
  description = "${var.description}"
  scope       = "${var.scope}"

  tags = "${var.tags}"
  default_action {
    allow {}
  }


  visibility_config {
    cloudwatch_metrics_enabled = "${var.cloudwatch_metrics_enabled}"
    metric_name                = "${var.metric_name}"
    sampled_requests_enabled   = "${var.sampled_requests_enabled}"
  }
}
