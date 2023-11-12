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

# terraform workspace lsit
# terraform workspace show
# terraform workspace create new prod
# terrafrom workspace create new testing
# terraform workspace select testing 

# Note* In both testing & prod workspace tf file remain same 