resource "aws_iam_user" "main" {
  name = "${var.name}"
  path = "${var.path}"

  tags = "${var.tags}"
}
