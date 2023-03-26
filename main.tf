terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "iam" {
  source = "./modules/iam"
  policy_name = var.policy_name
}

module "network" {
  source               = "./modules/network"
  vpc_name             = var.vpc_name
  snet_pub_name        = var.snet_pub_name
  snet_priv_name       = var.snet_priv_name
  cidr_block_vpc       = var.cidr_block_vpc
  cidr_block_snet_pub  = var.cidr_block_snet_pub
  cidr_block_snet_priv = var.cidr_block_snet_priv
  az_snet_pub          = var.az_snet_pub
  az_snet_priv         = var.az_snet_priv
  Env                  = var.Env

  depends_on = [
    module.iam
  ]
}

module "security" {
  source   = "./modules/security"
  sg_name  = var.sg_name
  vpc_name = var.vpc_name
  Env      = var.Env

  depends_on = [
    module.network
  ]
}

module "routing" {
  source         = "./modules/routing"
  vpc_name       = var.vpc_name
  snet_pub_name  = var.snet_pub_name
  snet_priv_name = var.snet_priv_name
  rt_name        = var.rt_name
  Env            = var.Env

  depends_on = [
    module.network
  ]
}

module "compute" {
  source        = "./modules/compute"
  instance_type = var.instance_type
  snet_pub_name = var.snet_pub_name
  sg_name       = var.sg_name
  Env           = var.Env
  instance_name = var.instance_name

  depends_on = [
    module.iam,
    module.network,
    module.security,
    module.routing
  ]
}