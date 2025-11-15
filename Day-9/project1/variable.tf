variable "cloudinputs" {
    type = object({
      region = string
      vpc_cidr = string
      vpc_name = string
      subnet_info = object({
        sub_az = list(string)
        sub_cidr = list(string)
        sub_name = list(string)
      })
    })

    default = {
      region = "ap-south-1"
      vpc_cidr = "10.0.0.0/16"
      vpc_name = "my_vpc"
      subnet_info = {
        sub_az = ["ap-south-1a","ap-south-1b"]
        sub_cidr = ["10.0.0.0/24","10.0.1.0/24"]
        sub_name = ["sub-1","sub-2"]
      }
    }
  
}