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
  region = "us-east-2"
}


resource "aws_instance" "ansible_client1" {
  ami           = "ami-0f19d220602031aed"
  instance_type = "t2.micro"
  subnet_id = "subnet-0da094a535c9f689a"
  count = 1
  key_name = "aws_arch"
  tags = {
    "Name" = "ansible_client1"
  }
}


resource "aws_instance" "ansible_client2" {
  ami           = "ami-0f19d220602031aed"
  instance_type = "t2.micro"
  subnet_id = "subnet-0da094a535c9f689a"
  count = 1
  key_name = "aws_arch"
  tags = {
    "Name" = "ansible_client2"
  }
}
