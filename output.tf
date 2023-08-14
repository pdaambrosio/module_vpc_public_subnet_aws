output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.vpc_instances.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value = aws_subnet.public_subnet.id
}

output "aws_internet_gateway_id" {
  description = "The ID of the internet gateway"
  value = aws_internet_gateway.igw_instances.id
}
