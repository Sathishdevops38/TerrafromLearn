variable "aws_vpc" {
    description = "enter cidr block"
    type = string  
}
variable "aws_subnet" {
  description = "enter subnet cidr_block"
  type = string
}
variable "az" {
  description = "enter az"
  type = string
}

variable "region" {
  type = string
  default = "us-east-2"
}

variable "tags" {
  description = "environment"
  type = list(string)
}
/*
variable "tags" {
    description = "env"
    type = list(object({
        aws_vpc = string,
        aws_subnet = string,
        aws_default = string
    }))

}
*/