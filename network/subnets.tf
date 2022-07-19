resource "aws_subnet" "public-sub-1" {
  vpc_id                  = aws_vpc.tf-playground.id
  cidr_block              = var.public-sub-1-cidr #"10.0.1.0/24"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-1"
  }
}

resource "aws_subnet" "public-sub-2" {
  vpc_id                  = aws_vpc.tf-playground.id
  cidr_block              = var.public-sub-2-cidr #"10.0.2.0/24"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-2"
  }
}

resource "aws_subnet" "private-sub-1" {
  vpc_id            = aws_vpc.tf-playground.id
  cidr_block        = var.private-sub-1-cidr #"10.0.3.0/24"
  availability_zone = "${var.region}a"

  tags = {
    Name = "private-sub-1"
  }
}

resource "aws_subnet" "private-sub-2" {
  vpc_id            = aws_vpc.tf-playground.id
  cidr_block        = var.private-sub-2-cidr #"10.0.4.0/24"
  availability_zone = "${var.region}b"

  tags = {
    Name = "private-sub-2"
  }
}
