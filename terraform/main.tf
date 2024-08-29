resource "aws_instance" "example1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "node1"
  }
}

resource "aws_instance" "example2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "node2"
  }
}
