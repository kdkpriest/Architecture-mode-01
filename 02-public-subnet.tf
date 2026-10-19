resource "aws_subnet" "public-subnet-01" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet-01"
  }
}

resource "aws_route_table_association" "route_associate_01" {
  subnet_id      = aws_subnet.public-subnet-01.id
  route_table_id = data.aws_route_table.defaut-route-table.id
}

resource "aws_subnet" "public-subnet-02" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public-subnet-02"
  }
}

resource "aws_route_table_association" "route_associate_02" {
  subnet_id      = aws_subnet.public-subnet-02.id
  route_table_id = data.aws_route_table.defaut-route-table.id
}