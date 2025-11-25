variable "resource_values" {
    type = object({
      vpc_cidr = string
      vpc_name = string 
      
      subnet_info = object({
        sub_cidr = list(string)
        sub_az = list(string)
        sub_name = list(string)
      })

      rt_name = string
      rt_cidr = string
      igw_name = string

      sg = object({
        name = string 
        desc = string
        ingress_22 = object({
          from_port = number
          protocol = string 
          ing_cidr = list(string)
        })
        ingress_80 = object({
          from_port = number
          protocol = string 
          ing_cidr = list(string)
        })
        egress = object({
        port_no = number 
        protocol = string
        eg_cidr = list(string)
        })
      })

      instance = object({
        instance_type = string
        key_name = string
        inst_name = string
      })
      
    })

  
}

 