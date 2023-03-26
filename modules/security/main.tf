resource "aws_security_group" "sg_demo_cloud" {
  name        = var.sg_name
  description = "Security group for demo_cloud VPC"
  vpc_id      = data.aws_vpc.vpc_id.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
    Env  = var.Env
  }
}