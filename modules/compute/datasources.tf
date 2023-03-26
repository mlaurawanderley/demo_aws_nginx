data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_subnet" "subnet_pub_id" {
  filter {
    name   = "tag:Name"
    values = [var.snet_pub_name]
  }
}

data "aws_security_group" "sg_demo_cloud" {
  filter {
    name   = "tag:Name"
    values = [var.sg_name]
  }
}