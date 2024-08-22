terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.66.0"  # will not exceed to 5.x.x
    }
   
  }
}
provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "myec2" {
   ami = "ami-04e49d62cf88738f1"
   instance_type = "t2.micro
}

