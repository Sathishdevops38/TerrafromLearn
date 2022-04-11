provider "aws"{
    region = var.region
    access_key = ""
    secret_key = ""
}

resource "aws_vpc" "dev-vpc" {
  cidr_block = var.aws_vpc
   tags = {
     "Name" = var.tags[0]
   }
}

resource "aws_subnet" "dev-subnet" {
  vpc_id = aws_vpc.dev-vpc.id
  cidr_block = var.aws_subnet
  availability_zone = var.az
  tags = {
    "Name" = var.tags[0]
  }
}

data "aws_vpc" "existing_vpc" {
  default = true
}
resource "aws_subnet" "dev-subnet2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "us-east-2a"
  tags = {
      Name: var.tags[0]
  }
}

