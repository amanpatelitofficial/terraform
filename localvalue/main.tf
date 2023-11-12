provider "aws" {
    region = "us-west-1"
}

variable "aws_instance" {
    description = "web"
    type = list
    default = ["t2.micro", "t2.medium"]
}

variable "aws_ami" {
    description = "ami"
    type = string
    default = "ami-0cbd40f694b804622"
}

locals {
  tags = {
    Name = "Aman"
    Owner = "Opstree"
  }
}
resource "aws_instance" "web" {
     count = 2
     instance_type = var.aws_instance[count.index]
     ami = var.aws_ami

      tags = local.tags
     }

