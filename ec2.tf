resource "aws_instance" "bastion" {
  ami             = "ami-0d70546e43a941d70"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public-sub-1.id
  security_groups = [aws_security_group.allow_ssh.id]
  key_name        = aws_key_pair.admin.key_name
  tags = {
    "Name" = "bastion"
  }
}

resource "aws_instance" "application" {
  ami             = "ami-0d70546e43a941d70"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.private-sub-1.id
  security_groups = [aws_security_group.ssh-and-port3000.id]
  key_name        = aws_key_pair.admin.key_name
  tags = {
    "Name" = "application"
  }
}
