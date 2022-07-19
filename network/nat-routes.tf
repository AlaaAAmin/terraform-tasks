resource "aws_route_table" "nat-routes" {
  vpc_id = aws_vpc.tf-playground.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.tf-nat.id
  }

  tags = {
    Name = "nat-routes"
  }
}
