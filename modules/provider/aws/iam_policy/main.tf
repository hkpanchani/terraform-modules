resource "aws_iam_policy" "main" {
  name = "${var.name}"
  policy = jsonencode("${var.policy}")
}