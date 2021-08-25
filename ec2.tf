terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}


resource "aws_instance" "ebs-1" {
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  subnet_id = "subnet-0320315d45ebe5cd3"
  key_name = "ec2keys"
  tags = {
    "Name" = "ebs-1"
  }
}

