terraform {
  required_version = ">= 0.12.24"
  
  backend "s3" {
    bucket = "gitops-demo-bucket-tf"
    key = "gitops.tfstate"
    region = "ap-south-1"
    }
}
