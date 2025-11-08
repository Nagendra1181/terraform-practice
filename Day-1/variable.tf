variable "resource_values" {
    type = object({
      vpc-cidr = string
      vpc-name = string 
      
      subnet_info = object({
        sub-cidr = list(string)
        sub-az = list(string)
        sub-name = list(string)
      })
    })
  
default = {
  vpc-cidr = "10.0.0.0/16"
  vpc-name = "my-vpc"
  subnet_info = {
    sub-cidr = ["10.0.0.0/24","10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
    sub-az = ["ap-south-1a","ap-south-1b","ap-south-1c","ap-south-1a"]
    sub-name =  ["sub-1","sub-2","sub-3","sub-4"]
  }
}
  
}
