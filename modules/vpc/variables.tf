variable "region" {
  default = "ap-south-1"
  type    = string
}
variable "cidr_block" {
  default = "192.168.0.0/16"
  type    = string
}

variable "tags_all" {
  type = map(string)
  default = {
    Name          = "Nw_boundary"
    Environment   = "Development"
    Creation_date = "26/03/2023"
  }
}
