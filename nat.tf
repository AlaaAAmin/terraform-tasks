resource "aws_nat_gateway" "tf-nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public-sub-1.id

  tags = {
    Name = "tf-nat"
  }
}
