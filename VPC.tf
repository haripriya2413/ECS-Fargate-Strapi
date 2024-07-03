resource "aws_vpc" "strapivpc" {
  cidr_block = "20.0.0.0/16"

  tags = {
    Name = "strapi-node-VPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.strapivpc.id
  cidr_block              = "20.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "strapi-public-Subnet1"
  }
}


resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.strapivpc.id
  cidr_block              = "20.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1b"

  tags = {
    Name = "Strapi-public-Subnet2"
  }
}

resource "aws_internet_gateway" "strapiIG" {
  vpc_id = aws_vpc.strapivpc.id

  tags = {
    Name = "Internet-Gateway"
  }
}


resource "aws_route_table" "strapiRT" {
  vpc_id = aws_vpc.strapivpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.strapiIG.id
  }
}


resource "aws_route_table_association" "RTA1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.strapiRT.id
}


resource "aws_route_table_association" "RTA2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.strapiRT.id
}



