output "ec2privip" {
    value = aws_instance.ubuntu.private_ip
}
output "ec2pubip" {
    value = aws_instance.ubuntu.public_ip
}
output "ec2tag" {
    value = aws_instance.ubuntu.tags
}
