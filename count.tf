variable "environment_tags" {
  description = "Environment tags for instances"
  type        = list(string)
  default     = ["development", "staging", "production"]
}



resource "aws_instance" "my_instance" {
  count         = 3
  ami           = ""
  instance_type = "t2.micro"

  tags = {
    Name = var.environment_tags[count.index]
  }
}
 

   
