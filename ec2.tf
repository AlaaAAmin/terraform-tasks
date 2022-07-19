resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type          = var.instance_type #"t2.micro"
  subnet_id              = module.network.public-sub-1-id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = aws_key_pair.admin.key_name
  tags = {
    "Name" = "bastion"
  }
}

resource "aws_instance" "application" {
  ami                    = var.ami
  instance_type          = var.instance_type #"t2.micro"
  subnet_id              = module.network.private-sub-1-id
  vpc_security_group_ids = [aws_security_group.ssh-and-port3000.id]
  key_name               = aws_key_pair.admin.key_name
  tags = {
    "Name" = "application"
  }
}
