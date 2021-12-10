*Example*
```
module "example_iam_user_policy_attachment_example-restriction_demouser" {
  source = "./terraform-modules/provider/aws/iam_user_policy_attachment/v1"

  depends_on = [
    module.example_iam_access_key_user_demouser,
    module.example_iam_user_policy_example
  ]
  user = "${module.example_iam_access_key_user_demouser.iam_user_name}"
  policy_arn = "${module.example_iam_user_policy_example.iam_policy_arn}"

}
```