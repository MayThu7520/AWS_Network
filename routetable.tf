
resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.day3_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.day3_igw.id
    //network_interface_id = aws_network_interface.test.id
  }
  tags = { Name = "public_rtb" }
}

resource "aws_route_table" "private_rtb" {
  vpc_id = aws_vpc.day3_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.day3_NAT.id
    //network_interface_id = aws_network_interface.test.id
  }
  tags = { Name = "private_rtb" }
}


#ROUTE TABLE ASSOCIATION 
resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_a_subnet.id
  route_table_id = aws_route_table.public_rtb.id
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = aws_subnet.public_b_subnet.id
  route_table_id = aws_route_table.public_rtb.id
}


resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.private_a_subnet.id
  route_table_id = aws_route_table.private_rtb.id
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = aws_subnet.private_b_subnet.id
  route_table_id = aws_route_table.private_rtb.id
}
