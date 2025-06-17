terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
  backend "s3" {
    bucket = "ctf-terraform-state-gupoco"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

import {
  to = module.tfstate-aws-s3-setup.aws_s3_bucket.ctf_terraform_state_gupoco
  id = "ctf-terraform-state-gupoco"
}