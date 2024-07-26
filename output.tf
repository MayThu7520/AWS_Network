output "Day3_eip" {

  value = aws_eip.nat_eip.id

}

output "Day3_igw" {
  value = aws_internet_gateway.day3_igw.id
}

output "Day3_NAT" {
  value = aws_nat_gateway.day3_NAT.id
}

output "instance_id" {
  value = aws_instance.bastion_host.id
}

output "instance_public_ip" {
  value = aws_instance.bastion_host.public_ip
}
