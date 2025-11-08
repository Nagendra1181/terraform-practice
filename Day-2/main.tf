resource "aws_vpc" "vpc-v1" {
    cidr_block = var.resource_values.vpc-cidr

    tags = {
      Name = var.resource_values.vpc-name
    }
  
}


resource "aws_subnet" "sub_v" {
    vpc_id = aws_vpc.vpc-v1.id

    count = length(var.resource_values.subnet_info.sub-cidr)

    cidr_block =var.resource_values.subnet_info.sub-cidr[count.index]
    availability_zone = var.resource_values.subnet_info.sub-az[count.index]

    tags = {
        Name =var.resource_values.subnet_info.sub-name[count.index]
    }
<<<<<<< HEAD:Day-1/main.tf
    
}
=======

}   
>>>>>>> 43e7866 (day2):main.tf
