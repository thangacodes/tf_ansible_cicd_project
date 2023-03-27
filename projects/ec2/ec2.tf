module "ec2module" {
  source = "../../modules/ec2"
    ins_type = "t2.small"
    ami      = "ami-01a4f99c4ac11b03c"
    tags     = {
    Name = "Amazon-Linux-Machine"
  }
}
