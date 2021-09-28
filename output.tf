output "server_private_ip" {
  value = aws_instance.sm-project-web-server.private_ip.id
}

output "server_id" {
  value = aws_instance.sm-project-web-server.id
}

output "web-server-nic" {
  value = aws_network_interface.web-server-nic.id
}
