resource "aws_route_table_association" "nat-route-association-a" {
  subnet_id      = aws_subnet.private-sub-1.id
  route_table_id = aws_route_table.nat-routes.id
}

resource "aws_route_table_association" "nat-route-association-b" {
  subnet_id      = aws_subnet.private-sub-2.id
  route_table_id = aws_route_table.nat-routes.id
}
resource "aws_route_table_association" "igw-route-association-a" {
  subnet_id      = aws_subnet.public-sub-1.id
  route_table_id = aws_route_table.igw-routes.id
}
resource "aws_route_table_association" "igw-route-association-b" {
  subnet_id      = aws_subnet.public-sub-2.id
  route_table_id = aws_route_table.igw-routes.id
}
