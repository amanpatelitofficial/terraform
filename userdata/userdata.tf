resource "aws_instance" "web" {
    ami = "ami-0287a05f0ef0e9d9a"
    instance_type = "t2.micro"
    user_data  = <<-EOF
                   #!/bin/bash
                   sudo apt update
                   sudo apt install apache2 -y
                   sudo cd /var/www/html
                   sudo echo "Hello Aman" > index.html
                   sudo systemctl restart apache2
                   EOF
 }