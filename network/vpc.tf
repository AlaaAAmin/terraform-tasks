resource "aws_vpc" "tf-playground" {
  cidr_block           = var.vpc_cidr #"10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name #"tf-playground"
  }
}
