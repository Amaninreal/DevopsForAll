terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.82.2"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "firstec1"
  }
}
