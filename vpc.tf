resource "aws_vpc" "tf-playground" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "tf-playground"
  }
}
