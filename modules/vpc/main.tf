resource "aws_vpc" "demo" {
  cidr_block = var.cidr_block
  tags       = var.tags_all
}
