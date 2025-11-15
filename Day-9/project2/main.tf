data "aws_vpc" "p2_vpc" {
    id =  "vpc-06a68f59e2901eefe"
  
}

data "aws_subnet" "p2_subnet" {
    vpc_id = local.vpc_id

    filter {
      name = "tag:Name"
      values = ["sub-1"]
    }

    filter {
      name = "cidr"
      values = ["10.0.0.0/24"]
    }
  
}

resource "aws_subnet" "p2_sub3" {
    vpc_id = local.vpc_id
    availability_zone = local.az
    cidr_block = "10.0.10.0/24"
    tags = {
      Name = "sub-3"
    }
  
}

resource "aws_internet_gateway" "p2_igw" {
    vpc_id = local.vpc_id

    tags = {
      Name = "my-igw"
    }
  
}