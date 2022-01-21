resource "aws_vpc" "main" {
    cidr_block       = "${var.cidr_block}"
    
    tags = "${var.tags}"
}

resource "aws_wafv2_ip_set" "main" {
  name               = "${var.name}"
  description        = "${var.description}"
  scope              = "${var.scope}"
  ip_address_version = "${var.ip_address_version}"
  addresses          = "${var.addresses}"

  tags = "${var.tags}"
}