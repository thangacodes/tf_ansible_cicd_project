resource "aws_vpc" "demo" {
  cidr_block = var.cidr_block
  tags = {
    Name          = "Thanga-private-vpc"
    Environment   = "Development"
    Owner         = "thangadurai.murugan@example.com"
    Creation_Date = "24/03/2023"
  }
}

