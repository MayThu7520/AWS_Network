resource "aws_internet_gateway" "day3_igw" {
  vpc_id = aws_vpc.day3_vpc.id

  tags = {
    Name = "Day3_IGW"
  }
}


resource "aws_eip" "nat_eip" {

  domain = "vpc"
}

resource "aws_nat_gateway" "day3_NAT" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_a_subnet.id

  tags = {
    Name = "Day3_NAT"
  }
}
