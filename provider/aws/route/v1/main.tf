resource "aws_route" "main_gateway_id" {
    count = "${var.is_gateway}"?1:0
    route_table_id            = "${var.route_table_id}"
    destination_cidr_block    = "${var.destination_cidr_block}"
    gateway_id                = "${var.gateway_id}"
}

resource "aws_route" "main_nat_gateway_id" {
    count = "${var.is_nat_gateway}"?1:0
    route_table_id            = "${var.route_table_id}"
    destination_cidr_block    = "${var.destination_cidr_block}"
    nat_gateway_id            = "${var.nat_gateway_id}"
}