variable "environment_tags" {
  description = "Environment tags for instances"
  type        = list(string)
  default     = ["development", "staging", "production"]
}


resource "aws_instance" "my_instance" {
  count         = 3 
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name = var.environment_tags[count.index]
  }
}
