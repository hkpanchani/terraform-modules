*Example*
```
module "example_waf" {
  source      = "./terraform-modules/provider/aws/wafv2_web_acl"
  name        = "example"
  description = "Web App Firewall for example"
  scope       = "REGIONAL"

  # Cloudwatch Visibility Parameters
  metric_name = "example-cloudwatch-waf"
}
```