resource "aws_subnet" "public-sub-1" {
  vpc_id                  = aws_vpc.tf-playground.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-1"
  }
}

resource "aws_subnet" "public-sub-2" {
  vpc_id                  = aws_vpc.tf-playground.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-2"
  }
}

resource "aws_subnet" "private-sub-1" {
  vpc_id            = aws_vpc.tf-playground.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "private-sub-1"
  }
}

resource "aws_subnet" "private-sub-2" {
  vpc_id            = aws_vpc.tf-playground.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "private-sub-2"
  }
}
