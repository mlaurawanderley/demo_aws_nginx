resource "aws_route_table" "demo_cloud_route_table" {
  vpc_id = data.aws_vpc.vpc_id.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_cloud_igw.id
  }

  tags = {
    Name = var.rt_name
    Env  = var.Env
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = data.aws_subnet.subnet_pub_id.id
  route_table_id = aws_route_table.demo_cloud_route_table.id
}

resource "aws_internet_gateway" "demo_cloud_igw" {
  vpc_id = data.aws_vpc.vpc_id.id
}