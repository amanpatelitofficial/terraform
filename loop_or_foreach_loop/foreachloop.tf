provider "aws" {
   region     = "eu-central-1"
   access_key = "XXXXXXXXXXXXXXXX"
   secret_key = "XXXXXXXXXXXXXXXX"
}
resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"
   count = 1

   tags = {
           Name = "Terraform EC2"
   }

}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}

###########################################################################

provider "aws" {
   region     = "eu-central-1"
   access_key = "AKIATQ37NXB2NN3D4ARS"
   secret_key = "3v9mlwZQvmccL3ou1dxiDeEf1bWaG3kccpVlXXXX"
}
resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"
   count = 1

   tags = {
           Name = "Terraform EC2"
   }

}

resource "aws_iam_user" "example" {
  for_each = var.user_names
  name  = each.value
}

variable "user_names" {
  description = "IAM usernames"
  type        = set(string)
  default     = ["user1", "user2", "user3"]
}






