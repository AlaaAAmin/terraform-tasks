module "network" {
  source             = "./network"
  region             = var.region
  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  public-sub-1-cidr  = var.public-sub-1-cidr
  public-sub-2-cidr  = var.public-sub-2-cidr
  private-sub-1-cidr = var.private-sub-1-cidr
  private-sub-2-cidr = var.private-sub-2-cidr
}
