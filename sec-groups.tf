# allow ssh from the internet
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow_ssh inbound traffic"
  vpc_id      = aws_vpc.tf-playground.id

  ingress {
    description = "allow_ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

# create security group that allow ssh and port 3000 from vpc cidr only

resource "aws_security_group" "ssh-and-port3000" {
  name        = "ssh-and-port3000"
  description = "ssh-and-port3000 inbound traffic"
  vpc_id      = aws_vpc.tf-playground.id

  ingress {
    description = "allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.tf-playground.cidr_block]
  }

  ingress {
    description = "allow port 3000"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.tf-playground.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-and-port3000"
  }
}
