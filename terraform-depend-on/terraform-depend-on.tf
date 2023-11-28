resource "aws_s3_bucket" "s1" {
    bucket = "amanpatellinux"

    tags = {
      name = "s1"
    } 
}

resource "aws_instance" "web" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
  
  depends_on = [ aws_s3_bucket.s1 ]
}