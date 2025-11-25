provider "aws" {
    region = var.cloudinputs.region
  
}

resource "aws_vpc" "p1_vpc" {
    cidr_block = var.cloudinputs.vpc_cidr

    tags = {
      Name = var.cloudinputs.vpc_name
    }
  
}

resource "aws_subnet" "p1_subnet" {
    vpc_id = aws_vpc.p1_vpc.id
    count = length(var.cloudinputs.subnet_info.sub_az)
    availability_zone = var.cloudinputs.subnet_info.sub_az[count.index]
    cidr_block = var.cloudinputs.subnet_info.sub_cidr[count.index]

    tags = {
      Name = var.cloudinputs.subnet_info.sub_name[count.index]
    }
  
}