resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.sm-project-subnet_1.id
  private_ips     = ["10.0.2.50"]
  security_groups = [aws_security_group.sm-project-web-allow.id]
}
