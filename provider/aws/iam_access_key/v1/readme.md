*Exampl*

Create Access key with new user
```
module "example_iam_access_key_user_kyc" {
    source = "./terraform-modules/provider/aws/iam_access_key/v1"
    new_user = true
    user = "kyc_user"
}
```

Create Access key for existing user
```
module "example_iam_access_key_user_kyc" {
    source = "./terraform-modules/provider/aws/iam_access_key/v1"
    user = "kyc_user"
}
```