resource "aws_route_table" "sm-project-web-rt" {
  vpc_id = aws_vpc.sm-project.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sm-project-gw.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.sm-project-gw.id
  }

  tags = {
    Name = "sm-project-web-rt"
  }
}
