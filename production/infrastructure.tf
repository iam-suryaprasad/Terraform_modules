module "prod_vpc_1" {
  source             = "../modules/network"
  vpc_cidr           = "172.22.0.0/16"
  vpc_name           = "prod_vpc_1"
  environment        = "Production"
  public_cird_block  = ["172.22.1.0/24", "172.22.2.0/24", "172.22.3.0/24"]
  private_cird_block = ["172.22.10.0/24", "172.22.20.0/24", "172.22.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
}


module "prod_natgw_1" {
  source             = "../modules/nat"
  public_subnet_id   = module.prod_vpc_1.public_subnets_id_1
  vpc_name           = module.prod_vpc_1.vpc_name
}