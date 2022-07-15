# RSA key of size 4096 bits
resource "tls_private_key" "admin" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf-admin-key" {
  content  = tls_private_key.admin.private_key_pem
  filename = "tfkey"
}

resource "aws_key_pair" "admin" {
  key_name   = "admin"
  public_key = tls_private_key.admin.public_key_openssh
}
