provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami                    = ami-0e6329e222e662a52
  instance_type          = t2.micro
  vpc_security_group_ids = sg-0fb1052b659369aa8
  key_name               = admin
  count                  = 1
  tags                   = {
    Name = "GitOps_EC2"
}
}
