module "project3" {
    source = "C:/Users/RAMALINGESH M/Desktop/project1/folder1/"
    cloudinputs = {
        region = "us-east-1"
        vpc_name = "vpc-p3"
        vpc_cidr = "10.0.0.0/24"
        subnet_info = {
        sub_az = ["us-east-1a","us-east-1b","us-east-1c"]
        sub_cidr = ["10.0.0.0/26","10.0.0.64/26","10.0.0.128/26"]
        sub_name = ["sub-p1","sub-p2","sub-p3"]    
        }
    }
  
}

