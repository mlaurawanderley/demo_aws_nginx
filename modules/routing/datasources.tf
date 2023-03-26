data "aws_vpc" "vpc_id" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "subnet_pub_id" {
  filter {
    name   = "tag:Name"
    values = [var.snet_pub_name]
  }
}

data "aws_subnet" "subnet_priv_id" {
  filter {
    name   = "tag:Name"
    values = [var.snet_priv_name]
  }
}

# data "aws_internet_gateway" "igw_id" {
#   filter {
#     name   = "tag:Name"
#     values = [var.igw_name]
#   }
# }