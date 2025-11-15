output "vpc_id" {
  value = aws_vpc.p1_vpc.id
}

output "subnet_id" {
    value = aws_subnet.p1_subnet[0].id
  
}