output "subnet_id" {
  value = "${aws_subnet.main.id}"
}

output "subnet_availability_zone" {
  value = "${aws_subnet.main.availability_zone}"
}