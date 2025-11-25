output "ec2-pub-ip" {
    value = aws_instance.ec2_v.public_ip
  
}
