provider "aws" {
  region = "ap-south-1"
  AWS_ACCESS_KEY_ID = ${{ secrets.AWS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY = ${{ secrets.AWS_SECRET_KEY_ID }}
}

resource "aws_instance" "demo" {
  ami                    = "ami-0e6329e222e662a52"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0fb1052b659369aa8"]
  key_name               = "admin"
  count                  = 1
  tags = {
    Name = "GitOps_EC2"
  }
}
