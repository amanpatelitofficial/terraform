resource "aws_instance" "web" {
     ami = data.aws_ami.web.id 
     instance_type = "t2.micro"
     
     tags = {
       Name = "web"
     }
      
}
output "web_ami_id" {
  value = data.aws_ami.web.id
}



data "aws_ami" "web" {
    most_recent = true
    owners = [ "amazon" ]

    filter {
      name = "name"
      values = ["Amazon Linux 2023 AMI 2023.2.20231113.0 x86_64 HVM kernel-6.1"]
    }
  
}

