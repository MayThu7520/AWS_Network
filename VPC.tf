resource "aws_vpc" "day3_vpc" {
  cidr_block = "10.1.0.0/16"
  tags       = { Name = "day3_vpc" }
}

