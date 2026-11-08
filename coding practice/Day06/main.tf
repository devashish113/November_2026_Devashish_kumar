provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Pathnex-VPC"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Pathnex-Subnet"
  }
}

resource "aws_instance" "pathnex_ec2" {
  ami           = "ami-0abcd1234abcd1234"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Pathnex-EC2"
  }
}
