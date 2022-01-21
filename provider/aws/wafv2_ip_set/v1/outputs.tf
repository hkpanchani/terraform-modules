output "wafv2_ip_set_id" {
  value = "${aws_wafv2_ip_set.main.id}"
}

output "wafv2_ip_set_arn" {
  value = "${aws_wafv2_ip_set.main.arn}"
}