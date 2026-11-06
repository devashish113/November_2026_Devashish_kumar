provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "PathnexEC2" {
  ami           = "ami-0abcd1234abcd1234"
  instance_type = "t2.medium"

  tags = {
    Name = "Pathnex-Server"
  }

  ebs_block_device {
    device_name = "/dev/sdh"
    volume_size = 50
  }
}
