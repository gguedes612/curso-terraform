data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "guilherme-guedes-remote-state"
    key    = "terraform-state/teste"
    region = "us-east-2"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
  cidr_block = "10.99.0.0/24"
}