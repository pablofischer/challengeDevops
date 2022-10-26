data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["default"]
  }
}
resource "aws_security_group" "sg" {
  name        = "Security Group"
  description = "Allow 8080"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    description = "Allow 8080"
    from_port   = var.from_port_ingress
    to_port     = var.to_port_ingress
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = var.from_port_egress
    to_port          = var.to_port_egress
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}