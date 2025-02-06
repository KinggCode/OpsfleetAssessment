output "default_route_table_association" {
  description = "Default Route Table Association"
  value = {
    transit_gateway_id  = aws_route_table_association.default_route_table_association.id
  }
}