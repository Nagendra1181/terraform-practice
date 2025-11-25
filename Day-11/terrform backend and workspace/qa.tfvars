 resource_values = {
 vpc_cidr = "172.30.0.0/16"
      vpc_name = "qa-vpc"
      subnet_info = {
        sub_az = [ "ap-south-1a","ap-south-1b" ]
        sub_cidr =["172.30.0.0/24","172.30.1.0/24"]
        sub_name =["sub-1","sub-2"]
      }

      rt_name = "qa-rt"
      rt_cidr = "0.0.0.0/0"
      igw_name = "qa-igw"

      sg = {
        name = "qa-sg"
        desc ="allow ssh and http"
        ingress_22 = {
          from_port = 22
          protocol = "tcp"
          ing_cidr = ["0.0.0.0/0"]

        }
        ingress_80 = {
          from_port = 80
          protocol = "tcp"
          ing_cidr = ["0.0.0.0/0"]
        }
        egress = {
           port_no = 0
           protocol = "-1"
           eg_cidr = ["0.0.0.0/0"]
        }
      }
      instance ={
        instance_type = "t3.small"
        key_name = "nag"
        inst_name = "ubuntu"
      }
}       
