resource "aws_instance" "ubuntu" {
  instance_type          = var.ins_type
  ami                    = var.ami
  vpc_security_group_ids = ["sg-0fb1052b659369aa8"]
  tags                   = var.tags
}
