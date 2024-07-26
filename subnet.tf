
resource "aws_subnet" "public_a_subnet" {
  cidr_block        = "10.1.1.0/24"
  vpc_id            = aws_vpc.day3_vpc.id
  availability_zone = "ap-southeast-1a"

  tags = { Name = "public_a_subnet" }
}

resource "aws_subnet" "public_b_subnet" {
  cidr_block        = "10.1.2.0/24"
  vpc_id            = aws_vpc.day3_vpc.id
  availability_zone = "ap-southeast-1b"

  tags = { Name = "public_b_subnet" }
}

resource "aws_subnet" "private_a_subnet" {
  cidr_block        = "10.1.3.0/24"
  vpc_id            = aws_vpc.day3_vpc.id
  availability_zone = "ap-southeast-1a"

  tags = { Name = "private_a_subnet" }
}

resource "aws_subnet" "private_b_subnet" {
  cidr_block        = "10.1.4.0/24"
  vpc_id            = aws_vpc.day3_vpc.id
  availability_zone = "ap-southeast-1b"
  tags              = { Name = "private_b_subnet" }
}
