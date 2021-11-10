resource "aws_eip" "main" {
  tags = "${var.eip_tags}"
}
