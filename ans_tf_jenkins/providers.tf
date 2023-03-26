provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "thanga-demo-tf-24032023"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
