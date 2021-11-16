terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-jhc"
    key            = "ec2/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}
