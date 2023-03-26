output "cidr" {
    value = aws_vpc.demo.cidr_block
}
output "arn" {
    value = aws_vpc.demo.arn
}
output "tags" {
    value = aws_vpc.demo.tags  
}
