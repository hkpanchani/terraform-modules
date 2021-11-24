output "is_gateway_route_id" {
    value = "${var.is_gateway_id}"?"${aws_route.main_gateway_id[0].id}":""
}

output "is_nat_gateway_route_id" {
    value = "${var.is_nat_gateway_id}"?"${aws_route.main_nat_gateway_id[0].id}":""
}