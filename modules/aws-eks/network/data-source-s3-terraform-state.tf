# o comando abaixo remove a referência do bucket do estado do Terraform.
# terraform state rm aws_s3_bucket.ctf_terraform_state_gupoco
data "aws_s3_bucket" "existing_bucket" {
  bucket = "ctf-terraform-state-gupoco"
}