resource "aws_security_group" "my_example_sg" {
  name = "my-example-sg"
  description = "Allow for trafic for Jankins, grafana ect"
  vpc_id = "vpc-0fec1b9b47faa85d2"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "8080"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8080"
  }
   ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3000"
  }
   ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "9090"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9090"
  }
}


resource "aws_instance" "main-tools" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.security_group_id, aws_security_group.my_example_sg.id]
  key_name = "moris-ubuntu"
  root_block_device {
    volume_size = 10  # Size in GB
    volume_type = "gp3"  # Type of storage (gp3 is the latest generation of general-purpose SSD)
  }
  tags = {
    Name = "main-tools"
  }
}
