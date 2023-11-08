variable "environment_tags" {
  description = "Environment tags for instances"
  type        = list(string)
  default     = ["development", "staging", "production"]
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0400dbd1850503de3"
}

resource "aws_instance" "my_instance" {
  count         = 3
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.environment_tags[count.index]
  }
}
