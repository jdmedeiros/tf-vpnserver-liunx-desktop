terraform {
#  required_version = "0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
#      version = "3.25.0"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
#      version = "2.1.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "vocareum"
}

provider "cloudinit" {

}
