module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  tags_all = {
    Name          = "MY_NETWORK"
    Environment   = "Production"
    Creation_date = "26/03/2023"
    Owner         = "Thangadurai.Murugan"
    Place         = "Bangalore"
  }
}
