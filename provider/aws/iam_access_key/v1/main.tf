module "iam_user" {
  count = "${var.new_user}" ? 1:0 
  source = "git::https://gitlab+deploy-token-639923:uxxxaC82yQEZqQYqE9kY@gitlab.com/yudiz_devops/terraform-modules.git//provider/aws/iam_user"
  name = "${var.user}"
  tags = {
      Created_by: "IAM access key module by terraform"
  }
}

resource "aws_iam_access_key" "main" {
    depends_on = [
      module.iam_user
    ]
  user = "${var.user}"
  pgp_key = "${var.pgp_key}"
}
