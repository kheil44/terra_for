terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.66.0" # will not exceed to 5.x.x
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}