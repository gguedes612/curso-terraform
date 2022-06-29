variable "region" {
  default     = "us-east-2"
  description = "AWS region"
}

variable "vpc_id" {
  default = "vpc-0df31a6e2d113d8b7"
  description = "ID do VPC que sera utilizado nesse terraform"
}

variable "subnet_ids" {
  type = list
  default = ["subnet-04f9462620240c5c1","subnet-00c7176f1c6f72c32","subnet-0961dd9a7d368e1b0"]
  description = "Ids da Subnet que sera utilizado nesse terraform"
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}


data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "main" {
  count = length(var.subnet_ids)
  id = var.subnet_ids["${count.index}"]
}


output "vpc_cidr" {
  value = data.aws_vpc.main.cidr_block
  description = "Bloco cidr da VPC"
}

output "subnets_cidr" {
  value = [for subnets in data.aws_subnet.main: subnets.cidr_block]
}