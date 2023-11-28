terraform {
  backend "s3" {
   bucket = ""
   key = ""
   access_key = ""   
   secret_key = ""
   dynamodb_table = "" 
  }
}


# Workspace Conspect # 

# terraform workspace list
# terraform workspace show
# terraform workspace new prod
# terrafrom workspace new testing
# terraform workspace select testing 

# Note* In both testing & prod workspace tf file remain same 