 resource "aws_instance" "web" {
   ami               = "ami-0c1a7f89451184c8b"
   instance_type     = "t2.nano"
   key_name          = "demo"


   network_interface {
     device_index         = 0
     network_interface_id = aws_network_interface.web-server-nic.id
   }

   user_data = <<-EOF
      #!/bin/bash
                 sudo apt update -y
                 sudo apt install apache2 -y
                 sudo systemctl start apache2
                 sudo bash -c 'echo Hello Balaraju Golla.. This message is genrated from webserver > /var/www/html/index.html'
   EOF
   tags = {
     Name = "sm-project-web-server"
   }
 }
