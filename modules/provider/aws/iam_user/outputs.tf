output "iam_user_name" {
  value = "${aws_iam_user.main.name}"
}

output "iam_user_arn" {
  value = "${aws_iam_user.main.arn}"
}