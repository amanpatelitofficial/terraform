
# step 1

resource "aws_instance" "web" {
}


# terraform import aws_instance.web i-018eb8b2a7d877032


# step 2

resource "aws_instance" "web" {
     instance_type = "t2.micro"
     ami = "ami-0287a05f0ef0e9d9a"

     tags = {
        Name = "web"
     }
}

# terraform plan