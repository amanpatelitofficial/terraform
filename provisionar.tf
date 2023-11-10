# there are 3 types of provisinor in tf
~   # a- local-exec-provisionr  b- remote-exec-provisionor   c- file-provisionor
  
 resource "aws_key_pair"  "devops" {
     key_name = "devops"
     public_key = ""
 }
  
  
 resource "instance_type" "web" {
     ami = ""
     instance_type = "t3.micro"
     key_name = "devops"

     tags = {
       name = "devops"
    }

 provisionar "file" {
    source = /home0aman/index.html"
    destations = "tmp/index.html"
}

 provisionar "remote-exec" {
    inline = {
      "sudo apt update"
      "sudo install httpd"
      "systemctl restart httpd"
      "cp -cvf /tmp/index.html  /var/www/html"
      "systemctl restart httpd"
}
}

connections {
   host = "local_public_key"
   user = "ec2-user"
   type = "ssh"
   private_key = file(./"devops")
}
   
   
  
