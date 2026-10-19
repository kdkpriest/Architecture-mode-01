resource "aws_subnet" "private-subnet-01" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.11.0/24"

  tags = {
    Name = "private-subnet-01"
  }
}

resource "aws_subnet" "private-subnet-02" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.12.0/24"

  tags = {
    Name = "private-subnet-02"
  }
}