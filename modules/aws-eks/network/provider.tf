terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
  backend "s3" {
    bucket = "ctf-terraform-state-gupoco"
    key    = "terraform-s3.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}