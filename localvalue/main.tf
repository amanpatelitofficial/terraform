provider "aws" {
    region = "ap-south-1"
}

locals {
  common_tags {
    Name = Delhi
  }
}


resource "aws_instance" "web" {
    instance_type = "t2.micro"
    ami = ""
    tags = "local.common_tags"
}

resource "aws_ebs_volume" "v1" {
    availability_zone = "ap-south-1a"
    size = 10
    tags = "local.common_tags"
}