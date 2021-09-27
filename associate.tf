resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.sm-project-subnet_1.id
  route_table_id = aws_route_table.sm-project-web-rt.id
}
