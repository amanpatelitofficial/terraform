resource "instance_type" "name" { 
     instance_type = var.instance_type
     ami = var.ami_value
}