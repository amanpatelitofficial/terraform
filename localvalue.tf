
locals {
  comman_tags = {
    Name = "MyInstance"
    Environment = "Dev"
  }
}


resource "aws_instance" "web" {
    ami           = "ami-010f8b02680f80998"
    instance_type = "t2.micro"
    tags        = local.comman_tags
}

resource "aws_vpc" "myvpc" {
  cidr_block        = "10.0.0.0/16"
#  instance_tendency = "default"
  tags         = local.comman_tags
}

resource "aws_ebs_volume" "volume1" {
  availability_zone  =  "us-weat-1a"
  size               =   "50"
  tags         = local.comman_tags
}
