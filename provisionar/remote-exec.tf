resource "aws_key_pair" "prod" {
  key_name = "id_rsa_pub"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCw53OkIixHpy4n+P4lINRwArIBXxEMkBBBWWpRCa1WkQCYiKcF1iMpR37RSmDGZsyC2xXtiPJxwXOVycht7dBlCjWg11jgix8+IZUj6N0b7QLM/zZ/eR7LAV2ICD2kbxMYGM8vaGb/Zjv6aCl+wg8PRlkAGnYKGj7EfQL55JfcqINsfzBUS0hs5XLQUhaM6V79daLpxFitH202jEkOnr2piGx9y+w8THvPya2AePGtairOrtQ+wM9KXz3Bf4nDHfszobaSTe1cdA6b82Fksav9vvdEH+eUI5rJzbCInbSmQ3d34nlYD9+3fPDbKcZvkeGl5Etum+wNB1tASICoWwZ+vAcmx5T9AAC7sRzc2K5WR/sSp8u5ChthkXQTpr/9UU7cb3HmP+Fju4ix6mNnaUmg6nf0r6qWhhgOM05tghDjtvluIKxGj0T9PLaWr5Uz5WOPrmUp8Rbf+4JFTHiLpiEszmi3AqoaG5CmAqHt5apsLDlunobKgE6S1Qk95ba6v1k= root@ip-172-31-28-224"
  
}




resource "aws_instance" "example" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"
  key_name = "prod"

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
    ]
    
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }
}