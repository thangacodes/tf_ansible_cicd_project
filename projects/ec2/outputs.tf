output "ec2privip" {
  value = module.ec2module.ec2privip
}
output "ec2pubip" {
  value = module.ec2module.ec2pubip
}
output "ec2tag" {
  value = module.ec2module.ec2tag
}
output "ami" {
  value = module.ec2module.ami_id
}
