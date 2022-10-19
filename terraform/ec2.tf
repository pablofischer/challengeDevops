
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t2.micro"
  security_groups      = [aws_security_group.sg.name]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "ChallengeDevops"
  }

  user_data = <<EOF
#!/bin/bash 
sudo apt update && sudo apt install docker.io -y
EOF

  provisioner "local-exec" {
    command = "echo Your instance URL ${aws_instance.web.public_ip}:8080 > public-ip.txt"
  }

}