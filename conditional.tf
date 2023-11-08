variable instancetype {
   type = map
   default =  {
     "dev" = "t2.micro",
     "team" = "t2.medium",
     "prod" = "t2.large"
}

variable image {
  type = list 
  default = [ "ami-02e94b011299ef128","ami-0645cf88151eb2007","ami-0b75322ebdbcb2994" ]
}

varibale input {}

recource "aws_instance" "dev" {
  instance_type = var.instancetype["dev"]
  ami = var.image[0]
  count = var.input == "dev" ? 2 : 0 
}
