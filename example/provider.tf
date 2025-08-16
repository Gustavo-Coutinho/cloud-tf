terraform {
  backend "s3" {
    bucket = "ctf-terraform-state-gupoco"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}