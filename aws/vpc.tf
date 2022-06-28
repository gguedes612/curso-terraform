terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}

#####
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

output "aws_vpc_id" {
  value = aws_vpc.main.id
}
