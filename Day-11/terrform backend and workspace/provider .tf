provider "aws" {
    region = "ap-south-1"
  
}

terraform {
    backend "s3"{
        bucket = "terraformbackend2323"
        region = "us-east-1"
        key = "project1/demo.tfstate"
        use_lockfile = true # to restrict to concurrent modification
    }
}

