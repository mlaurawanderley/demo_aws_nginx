resource "aws_key_pair" "demo_cloud_key" {
  key_name   = "demo_cloud_key"
  public_key = file("~/.ssh/demo_cloud_key.pub")
}

resource "aws_instance" "instance_demo_cloud" {
  ami                         = data.aws_ami.ubuntu.id # Ubuntu
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnet.subnet_pub_id.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.sg_demo_cloud.id]
  key_name                    = aws_key_pair.demo_cloud_key.key_name

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update && sudo apt-get install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/demo_cloud_key")
    host        = self.public_ip
  }
  
  tags = {
    Name = var.instance_name
    Env  = var.Env
  }
} 