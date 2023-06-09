# Creating VPC with 3 subnets in aws mumbai region.


provider "aws" {
  region = var.region
}

variable "region" {
  default     = "ap-south-1"
  description = "Which region the services that will be getting created"
}

resource "aws_vpc" "dev_vpc" {
  cidr_block = "192.168.0.0/16"
  tags       = merge(var.subnet_tags, { Name = "DEV-ACCOUNT-VPC" })
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24", ]
}

variable "subnet_tags" {
  description = "Naming for each subnets"
  type        = map(string)
  default = {
    Project    = "TF_POC_PROJECT"
    Owner      = "THANGADURAI.MURUGAN"
    CostCenter = "12345679"
    EmailID    = "dev@example.com"
    TF_Version = "v1.2.8"
  }
}

resource "aws_subnet" "dev_subnets" {
  count             = length(var.subnet_cidr_blocks)
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = "ap-south-1a"
  tags              = merge(var.subnet_tags, { Name = "DEV-SUBNET-${count.index}" })
}
output "dev_subnet_cidr_range" {
  value = [for c in aws_subnet.dev_subnets : c.cidr_block] # c-is variable to store cidr_block range
}

output "dev_subnet_arns" {
  value = [for a in aws_subnet.dev_subnets : a.arn] # a-is vairable to store arn's of subnets
}

#####################################################################################################################

