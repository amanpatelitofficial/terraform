provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "name" {
   ami = var.ami_value
   availability_zone = ap-south-1a
   instance_type = var.instance_type
   tenancy = "default"
}

resource "aws_ebs_volume" "aws_ebs_volume1" {
    availability_zone = "ap-south-1a"
    size = 50

 tags = {
    Name = "EBS1"
 }
}
