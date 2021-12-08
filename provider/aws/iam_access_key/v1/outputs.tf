output "iam_access_key_secret" {
  value = "${aws_iam_access_key.main.secret}"
}

output "iam_user_name" {
  value = "${var.user}"
}
