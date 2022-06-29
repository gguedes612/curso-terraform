provider "aws" {
  region = var.region
}

###  variables  ###

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
  default = ["subnet-0ca2d45be9d6ab5bc","subnet-0b2b57acbb1da0623","subnet-05d3e7f4611c12a23"]
  description = "Ids da Subnet que sera utilizado nesse terraform"
}

variable "internet_gateway_id" {
  default = "igw-05dadde3d0234037f"
  description = "Internet Gateway que sera usado no terraform"
}

variable "cluster_role_arn" {
  default = "arn:aws:iam::573211021242:role/cluster-role"
  description = "ARN da role para a cluster"
}

variable "cluster_name" {
  default = "Gui-Cluster-Teste"
  description = "Nome do cluster"
}
variable "worker_role_arn" {
  default = "arn:aws:iam::573211021242:role/worker-role"
  description = "ARN da role para o worker"
}
variable "node_name" {
  default = "minion"
  description = "Nome dos nodes"
}
variable "worknodes" {
  default = 3
}
variable "worknode_desired_size" {
  default = 2
}
variable "worknode_max_size" {
  default = 2
}
variable "worknode_min_size" {
  default = 2
   
 }
### data ###

data "aws_availability_zones" "available" {}

data "aws_vpc" "main" {
  id = var.vpc_id
}

data "aws_subnet" "main" {
  count = length(var.subnet_ids)
  id = var.subnet_ids["${count.index}"]
}

###  resource ###

resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = "1.15"


  vpc_config {
    subnet_ids = var.subnet_ids
}
}

resource "aws_eks_node_group" "personalerp_nodegroup" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.node_name}-${count.index}"
  node_role_arn   = var.worker_role_arn
  instance_types  = ["t2.micro"]

  count = var.worknodes

  subnet_ids = var.subnet_ids

  scaling_config {
    desired_size = var.worknode_desired_size
    max_size     = var.worknode_max_size
    min_size     = var.worknode_min_size
  }
}
###  output  ###
output "vpc_cidr" {
  value = data.aws_vpc.main.cidr_block
  description = "Bloco cidr da VPC"
}

output "subnets_cidr" {
  value = [for subnets in data.aws_subnet.main: subnets.cidr_block]
}