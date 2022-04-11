output "myvpc" {
    value = aws_vpc.dev-vpc.id
}

output "subnetid" {
   value = aws_subnet.dev-subnet.id
}