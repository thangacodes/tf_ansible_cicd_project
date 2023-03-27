variable "region" {
  default = "ap-south-1"
  type    = string
}
variable "ins_type" {
  default = "t2.micro"
  type    = string
}
variable "ami" {
  default = "ami-0c2ae549de742e57e"
  type    = string
}
variable "tags" {
  type = map(string)
  default = {
    Name          = "Ubuntu_server"
    Environment   = "Development"
    Creation_Date = "27/03/2023"
    Owner         = "Thangadurai.Murugan"
  }
}
