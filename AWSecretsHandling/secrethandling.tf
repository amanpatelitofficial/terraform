# 1st method

provider "aws" {
   profile    = "test"
   region     = "eu-central-1"
   access_key = "A0LPA99DFKJ74HW0CPAGH0FNM3"
   secret_key = "a1toUHEBHSU49348JjdssNicCwcT61DfzHtHtkWJYhgnN"
}


# 2nd Method

# you need to install awscli 
# cd /home/aman/.aws/credentials 

provider "aws" {
   profile    = "test"
   region     = "eu-central-1"
   shared_credentials_file = "/home/vagrant/.aws/credentials"
}


# 3rd Method
# Run below command on linux terminal only 

export AWS_ACCESS_KEY_ID="A0LPA509NDFKJ74HW0CPAGH0FNM3" 
export AWS_SECRET_ACCESS_KEY="a1toUHEBHSU404823JjdssNicCwcT61DfzHtHtkWJYhgnN"
