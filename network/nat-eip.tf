# Elastic-IP (eip) for NAT
resource "aws_eip" "nat_eip" {
  vpc = true
  # depends_on takes a list of values
  depends_on = [aws_internet_gateway.tf-igw]

  tags = {
    "Name" = "nat_eip"
  }
}
