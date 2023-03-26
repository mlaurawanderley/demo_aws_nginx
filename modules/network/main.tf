resource "aws_vpc" "vpc-demo-cloud" {
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = var.vpc_name
    Env  = var.Env
  }
}

resource "aws_subnet" "snet_pub" {
  vpc_id            = aws_vpc.vpc-demo-cloud.id
  cidr_block        = var.cidr_block_snet_pub
  availability_zone = var.az_snet_pub

  tags = {
    Name = var.snet_pub_name
    Env  = var.Env
  }
}

resource "aws_subnet" "snet_priv" {
  vpc_id            = aws_vpc.vpc-demo-cloud.id
  cidr_block        = var.cidr_block_snet_priv
  availability_zone = var.az_snet_priv

  tags = {
    Name = var.snet_priv_name
    Env  = var.Env
  }
}