provider "aws" {
    region = us-west-1
}

module "web" {
    source = "./modules/web"
    ami = "ami-010f8b02680f80998"
    instance_type = "t2.micro"
}