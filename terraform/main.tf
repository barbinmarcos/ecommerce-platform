provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  name   = "ecommerce-platform"
}

module "ecr" {
  source = "./modules/ecr"
  name   = "ecommerce-platform-app"
}

module "eks" {
  source          = "./modules/eks"
  name            = "ecommerce-platform"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}
