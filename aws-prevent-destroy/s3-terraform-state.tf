resource "aws_s3_bucket" "ctf_terraform_state_gupoco" {
  bucket = "ctf-terraform-state-gupoco"
  region = "us-east-1"
  tags = {
    Name = "ctf-terraform-state-gupoco"
  }
  lifecycle {
    prevent_destroy = true
  }
}