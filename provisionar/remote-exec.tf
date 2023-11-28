resource "aws_key_pair" "web" {
  key_name = "aws_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDV5nzsRFFHJA9ZqEqSpxjnewgJz9kLIYcblbdvXgGXnxUvEA+ksnoGhkQVVSrfNQP7b21m4bia8HGKUMNoEXeUSwRK3qYAH2h+RR+d8forX5J54fi0++5D4fyFddnVYmGxLQGpKMQjWolQ8fspqcNhJIjK/zQ/Rw6H2A7UKMzznvBaqYJyLfXFPPhIvkHs3sYPrHoR5jRLp5PE8F/nbSD0yHeS8MwdayOaWry9QddiyrULQAN7YwvD1nJO3Ik9eKFiFtBsJeOOBqjIHsNarOrMFZWhMlXusLjkVJdulznBsIpFfuhD5y2wT78HxrujoBA0SRjIBNUNWh1Y2iJ+v0t/etRW8hEsoQQC2d6QAe1fGgzzMnWlGF4e48jFIpew6exXZ2ToigF1U7LLh3wMDQKzbAftUs8Oi+pLpj0ULrM9bbEwyXPRj2rMf8sqaT/Ow6lg7+ubl3EoSwX0+yuR5P3iJMVPCIATdhR4hKnNhqid9RZbiB3dsI75QVtOmft46fc= root@ip-172-31-28-224"
}

resource "aws_instance" "web" {
  ami= "ami-0fc5d935ebf8bc3bc"
  key_name = "aws_key"
  instance_type = "t2.micro"
  


provisioner "remote-exec" {
     inline = [
      "sudo apt update",
      "sudo apt install -y apache2* ",
      
     ]
}

     connection {
      type= "ssh"
      user = "ubuntu"
      host = self.public_ip
      private_key = file("./aws_key")
     }  

}