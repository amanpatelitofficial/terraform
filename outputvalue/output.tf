output "instance_type" {
    value = "aws_instance.test_server.instance_type"
    sensitive = true  # if we use this then at the time of terraform apply then we do not get the output, if we want to see the output then we use terrform out 
}



# terraform output ami  --- if you want that we don't user terraform appy commant to see the output then we user terraform out 