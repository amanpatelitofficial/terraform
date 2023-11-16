# main.tf

provider "aws" {
  region     = "us-west-2"
  access_key = module.vault.aws_access_key
  secret_key = module.vault.aws_secret_key
}

module "vault" {
  source = "hashicorp/vault/aws"

  // Vault server address
  address = "http://vault.example.com:8200"

  // AWS credentials path in Vault
  aws_credentials_path = "secret/data/aws"
}
