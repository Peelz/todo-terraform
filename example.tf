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
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-086d2d413b385037d"
  instance_type = "t2.micro"

}

# to read specific output
output "ami" {
  value = aws_instance.example.ami
}
