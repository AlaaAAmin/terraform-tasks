resource "aws_route_table" "igw-routes" {
  vpc_id = aws_vpc.tf-playground.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw.id
  }

  tags = {
    Name = "igw-routes"
  }
}
